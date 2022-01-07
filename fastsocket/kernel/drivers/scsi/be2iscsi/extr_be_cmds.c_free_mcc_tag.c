
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_ctrl_info {unsigned int* mcc_tag; size_t mcc_free_index; int mbox_lock; int mcc_tag_available; } ;


 int MAX_MCC_CMD ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void free_mcc_tag(struct be_ctrl_info *ctrl, unsigned int tag)
{
 spin_lock(&ctrl->mbox_lock);
 tag = tag & 0x000000FF;
 ctrl->mcc_tag[ctrl->mcc_free_index] = tag;
 if (ctrl->mcc_free_index == (MAX_MCC_CMD - 1))
  ctrl->mcc_free_index = 0;
 else
  ctrl->mcc_free_index++;
 ctrl->mcc_tag_available++;
 spin_unlock(&ctrl->mbox_lock);
}
