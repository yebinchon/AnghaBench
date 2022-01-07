
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int dummy; } ;


 int GFP_KERNEL ;
 unsigned char RAID_UNKNOWN ;
 int hpsa_scsi_do_inquiry (struct ctlr_info*,unsigned char*,int,unsigned char*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;

__attribute__((used)) static void hpsa_get_raid_level(struct ctlr_info *h,
 unsigned char *scsi3addr, unsigned char *raid_level)
{
 int rc;
 unsigned char *buf;

 *raid_level = RAID_UNKNOWN;
 buf = kzalloc(64, GFP_KERNEL);
 if (!buf)
  return;
 rc = hpsa_scsi_do_inquiry(h, scsi3addr, 0xC1, buf, 64);
 if (rc == 0)
  *raid_level = buf[8];
 if (*raid_level > RAID_UNKNOWN)
  *raid_level = RAID_UNKNOWN;
 kfree(buf);
 return;
}
