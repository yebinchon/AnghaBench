
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {int dummy; } ;


 long KERNEL_PANIC ;
 long KERNEL_UP_AND_RUNNING ;
 int Mailbox7 ;
 long SELF_TEST_FAILED ;
 long sa_readl (struct aac_dev*,int ) ;

__attribute__((used)) static int aac_sa_check_health(struct aac_dev *dev)
{
 long status = sa_readl(dev, Mailbox7);




 if (status & SELF_TEST_FAILED)
  return -1;



 if (status & KERNEL_PANIC)
  return -2;



 if (!(status & KERNEL_UP_AND_RUNNING))
  return -3;



 return 0;
}
