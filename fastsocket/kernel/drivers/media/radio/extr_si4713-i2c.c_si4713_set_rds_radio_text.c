
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int radio_text; } ;
struct si4713_device {int mutex; TYPE_1__ rds_info; int power_state; } ;
typedef scalar_t__ s8 ;


 int MAX_RDS_RADIO_TEXT ;
 int RDS_BLOCK_CLEAR ;
 int RDS_BLOCK_LOAD ;
 char RDS_CARRIAGE_RETURN ;
 char RDS_RADIOTEXT_2A ;
 int RDS_RADIOTEXT_BLK_SIZE ;
 int RDS_RADIOTEXT_INDEX_MAX ;
 int compose_u16 (char,char) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int si4713_tx_rds_buff (struct si4713_device*,int ,int ,int ,int ,scalar_t__*) ;
 int strlen (char*) ;
 int strncpy (int ,char*,int ) ;

__attribute__((used)) static int si4713_set_rds_radio_text(struct si4713_device *sdev, char *rt)
{
 int rval = 0, i;
 u16 t_index = 0;
 u8 b_index = 0, cr_inserted = 0;
 s8 left;

 mutex_lock(&sdev->mutex);

 if (!sdev->power_state)
  goto copy;

 rval = si4713_tx_rds_buff(sdev, RDS_BLOCK_CLEAR, 0, 0, 0, &left);
 if (rval < 0)
  goto unlock;

 if (!strlen(rt))
  goto copy;

 do {



  if (t_index < (RDS_RADIOTEXT_INDEX_MAX *
   RDS_RADIOTEXT_BLK_SIZE)) {
   for (i = 0; i < RDS_RADIOTEXT_BLK_SIZE; i++) {
    if (!rt[t_index + i] || rt[t_index + i] ==
     RDS_CARRIAGE_RETURN) {
     rt[t_index + i] = RDS_CARRIAGE_RETURN;
     cr_inserted = 1;
     break;
    }
   }
  }

  rval = si4713_tx_rds_buff(sdev, RDS_BLOCK_LOAD,
    compose_u16(RDS_RADIOTEXT_2A, b_index++),
    compose_u16(rt[t_index], rt[t_index + 1]),
    compose_u16(rt[t_index + 2], rt[t_index + 3]),
    &left);
  if (rval < 0)
   goto unlock;

  t_index += RDS_RADIOTEXT_BLK_SIZE;

  if (cr_inserted)
   break;
 } while (left > 0);

copy:
 strncpy(sdev->rds_info.radio_text, rt, MAX_RDS_RADIO_TEXT);

unlock:
 mutex_unlock(&sdev->mutex);
 return rval;
}
