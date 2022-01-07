
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_device {int sdev_gendev; } ;
typedef enum raid_level { ____Placeholder_raid_level } raid_level ;






 int RAID_LEVEL_0 ;
 int RAID_LEVEL_1 ;
 int RAID_LEVEL_10 ;
 int RAID_LEVEL_1E ;
 int RAID_LEVEL_UNKNOWN ;
 int mpt3sas_raid_template ;
 int raid_set_level (int ,int *,int) ;

__attribute__((used)) static void
_scsih_set_level(struct scsi_device *sdev, u8 volume_type)
{
 enum raid_level level = RAID_LEVEL_UNKNOWN;

 switch (volume_type) {
 case 131:
  level = RAID_LEVEL_0;
  break;
 case 129:
  level = RAID_LEVEL_10;
  break;
 case 128:
  level = RAID_LEVEL_1E;
  break;
 case 130:
  level = RAID_LEVEL_1;
  break;
 }

 raid_set_level(mpt3sas_raid_template, &sdev->sdev_gendev, level);
}
