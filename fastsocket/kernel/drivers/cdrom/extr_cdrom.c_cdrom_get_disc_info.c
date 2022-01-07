
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct packet_command {int* cmd; int buflen; int quiet; } ;
struct cdrom_device_ops {int (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;
struct cdrom_device_info {struct cdrom_device_ops* ops; } ;
struct TYPE_4__ {int disc_information_length; } ;
typedef TYPE_1__ disc_information ;


 int CGC_DATA_READ ;
 int GPCMD_READ_DISC_INFO ;
 int be16_to_cpu (int ) ;
 int init_cdrom_command (struct packet_command*,TYPE_1__*,int,int ) ;
 int stub1 (struct cdrom_device_info*,struct packet_command*) ;
 int stub2 (struct cdrom_device_info*,struct packet_command*) ;

__attribute__((used)) static int cdrom_get_disc_info(struct cdrom_device_info *cdi, disc_information *di)
{
 struct cdrom_device_ops *cdo = cdi->ops;
 struct packet_command cgc;
 int ret, buflen;


 init_cdrom_command(&cgc, di, sizeof(*di), CGC_DATA_READ);
 cgc.cmd[0] = GPCMD_READ_DISC_INFO;
 cgc.cmd[8] = cgc.buflen = 2;
 cgc.quiet = 1;

 if ((ret = cdo->generic_packet(cdi, &cgc)))
  return ret;




 buflen = be16_to_cpu(di->disc_information_length) +
       sizeof(di->disc_information_length);

 if (buflen > sizeof(disc_information))
  buflen = sizeof(disc_information);

 cgc.cmd[8] = cgc.buflen = buflen;
 if ((ret = cdo->generic_packet(cdi, &cgc)))
  return ret;


 return buflen;
}
