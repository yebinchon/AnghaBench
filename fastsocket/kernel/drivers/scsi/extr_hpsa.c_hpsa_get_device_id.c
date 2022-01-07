
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int dummy; } ;


 int GFP_KERNEL ;
 int hpsa_scsi_do_inquiry (struct ctlr_info*,unsigned char*,int,unsigned char*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int hpsa_get_device_id(struct ctlr_info *h, unsigned char *scsi3addr,
 unsigned char *device_id, int buflen)
{
 int rc;
 unsigned char *buf;

 if (buflen > 16)
  buflen = 16;
 buf = kzalloc(64, GFP_KERNEL);
 if (!buf)
  return -1;
 rc = hpsa_scsi_do_inquiry(h, scsi3addr, 0x83, buf, 64);
 if (rc == 0)
  memcpy(device_id, &buf[8], buflen);
 kfree(buf);
 return rc != 0;
}
