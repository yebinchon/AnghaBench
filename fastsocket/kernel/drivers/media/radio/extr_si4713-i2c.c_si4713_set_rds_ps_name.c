
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ps_name; } ;
struct si4713_device {int mutex; TYPE_1__ rds_info; scalar_t__ power_state; } ;


 int DEFAULT_RDS_PS_REPEAT_COUNT ;
 int MAX_RDS_PS_NAME ;
 int RDS_BLOCK ;
 int SI4713_TX_RDS_PS_MESSAGE_COUNT ;
 int SI4713_TX_RDS_PS_REPEAT_COUNT ;
 int memset (char*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rds_ps_nblocks (int) ;
 int si4713_tx_rds_ps (struct si4713_device*,int,char*) ;
 int si4713_write_property (struct si4713_device*,int ,int) ;
 int strlen (char*) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int si4713_set_rds_ps_name(struct si4713_device *sdev, char *ps_name)
{
 int rval = 0, i;
 u8 len = 0;


 if (!strlen(ps_name))
  memset(ps_name, 0, MAX_RDS_PS_NAME + 1);

 mutex_lock(&sdev->mutex);

 if (sdev->power_state) {

  for (i = 0; i < MAX_RDS_PS_NAME; i += (RDS_BLOCK / 2)) {
   rval = si4713_tx_rds_ps(sdev, (i / (RDS_BLOCK / 2)),
      ps_name + i);
   if (rval < 0)
    goto unlock;
  }


  if (strlen(ps_name))
   len = strlen(ps_name) - 1;
  else
   len = 1;

  rval = si4713_write_property(sdev,
    SI4713_TX_RDS_PS_MESSAGE_COUNT,
    rds_ps_nblocks(len));
  if (rval < 0)
   goto unlock;

  rval = si4713_write_property(sdev,
    SI4713_TX_RDS_PS_REPEAT_COUNT,
    DEFAULT_RDS_PS_REPEAT_COUNT * 2);
  if (rval < 0)
   goto unlock;
 }

 strncpy(sdev->rds_info.ps_name, ps_name, MAX_RDS_PS_NAME);

unlock:
 mutex_unlock(&sdev->mutex);
 return rval;
}
