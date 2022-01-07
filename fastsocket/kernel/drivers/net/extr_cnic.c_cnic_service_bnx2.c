
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_block {int status_idx; } ;
struct cnic_dev {int flags; } ;


 int CNIC_F_CNIC_UP ;
 int cnic_service_bnx2_queues (struct cnic_dev*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cnic_service_bnx2(void *data, void *status_blk)
{
 struct cnic_dev *dev = data;

 if (unlikely(!test_bit(CNIC_F_CNIC_UP, &dev->flags))) {
  struct status_block *sblk = status_blk;

  return sblk->status_idx;
 }

 return cnic_service_bnx2_queues(dev);
}
