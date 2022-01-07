
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstick_request {int* data; int error; } ;
struct memstick_dev {int dev; } ;


 int EFAULT ;
 int MEMSTICK_INT_CED ;
 int MEMSTICK_INT_CMDNAK ;
 int MEMSTICK_INT_ERR ;
 int dev_dbg (int *,char*,int) ;
 int mspro_block_complete_req (struct memstick_dev*,int ) ;

__attribute__((used)) static int h_mspro_block_wait_for_ced(struct memstick_dev *card,
          struct memstick_request **mrq)
{
 dev_dbg(&card->dev, "wait for ced: value %x\n", (*mrq)->data[0]);

 if (!(*mrq)->error) {
  if ((*mrq)->data[0] & (MEMSTICK_INT_CMDNAK | MEMSTICK_INT_ERR))
   (*mrq)->error = -EFAULT;
  else if (!((*mrq)->data[0] & MEMSTICK_INT_CED))
   return 0;
 }

 return mspro_block_complete_req(card, (*mrq)->error);
}
