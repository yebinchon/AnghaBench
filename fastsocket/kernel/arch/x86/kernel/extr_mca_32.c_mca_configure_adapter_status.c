
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int pos_id; int* pos; scalar_t__ slot; void* status; } ;


 void* MCA_ADAPTER_DISABLED ;
 void* MCA_ADAPTER_ERROR ;
 void* MCA_ADAPTER_NONE ;
 void* MCA_ADAPTER_NORMAL ;
 int MCA_ENABLED ;
 scalar_t__ MCA_MAX_SLOT_NR ;

__attribute__((used)) static void mca_configure_adapter_status(struct mca_device *mca_dev)
{
 mca_dev->status = MCA_ADAPTER_NONE;

 mca_dev->pos_id = mca_dev->pos[0]
  + (mca_dev->pos[1] << 8);

 if (!mca_dev->pos_id && mca_dev->slot < MCA_MAX_SLOT_NR) {
  mca_dev->status = MCA_ADAPTER_ERROR;

  return;
 } else if (mca_dev->pos_id != 0xffff) {
  mca_dev->status = MCA_ADAPTER_NORMAL;
 }

 if ((mca_dev->pos_id == 0xffff ||
     mca_dev->pos_id == 0x0000) && mca_dev->slot >= MCA_MAX_SLOT_NR) {
  int j;

  for (j = 2; j < 8; j++) {
   if (mca_dev->pos[j] != 0xff) {
    mca_dev->status = MCA_ADAPTER_NORMAL;
    break;
   }
  }
 }

 if (!(mca_dev->pos[2] & MCA_ENABLED)) {



  mca_dev->status = MCA_ADAPTER_DISABLED;
 }
}
