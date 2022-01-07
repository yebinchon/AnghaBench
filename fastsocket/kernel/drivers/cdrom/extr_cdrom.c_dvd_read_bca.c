
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct packet_command {int* cmd; int buflen; } ;
struct cdrom_device_ops {int (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;
struct cdrom_device_info {struct cdrom_device_ops* ops; } ;
struct TYPE_4__ {int len; int value; } ;
struct TYPE_5__ {int type; TYPE_1__ bca; } ;
typedef TYPE_2__ dvd_struct ;


 int CD_WARNING ;
 int CGC_DATA_READ ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPCMD_READ_DVD_STRUCTURE ;
 int cdinfo (int ,char*,int) ;
 int init_cdrom_command (struct packet_command*,int*,int,int ) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int memcpy (int ,int*,int) ;
 int stub1 (struct cdrom_device_info*,struct packet_command*) ;

__attribute__((used)) static int dvd_read_bca(struct cdrom_device_info *cdi, dvd_struct *s,
   struct packet_command *cgc)
{
 int ret, size = 4 + 188;
 u_char *buf;
 struct cdrom_device_ops *cdo = cdi->ops;

 buf = kmalloc(size, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 init_cdrom_command(cgc, buf, size, CGC_DATA_READ);
 cgc->cmd[0] = GPCMD_READ_DVD_STRUCTURE;
 cgc->cmd[7] = s->type;
 cgc->cmd[9] = cgc->buflen & 0xff;

 ret = cdo->generic_packet(cdi, cgc);
 if (ret)
  goto out;

 s->bca.len = buf[0] << 8 | buf[1];
 if (s->bca.len < 12 || s->bca.len > 188) {
  cdinfo(CD_WARNING, "Received invalid BCA length (%d)\n", s->bca.len);
  ret = -EIO;
  goto out;
 }
 memcpy(s->bca.value, &buf[4], s->bca.len);
 ret = 0;
out:
 kfree(buf);
 return ret;
}
