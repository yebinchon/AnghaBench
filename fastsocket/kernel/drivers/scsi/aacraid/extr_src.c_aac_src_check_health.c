
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct aac_dev {int dummy; } ;
struct TYPE_2__ {int OMR; } ;


 int KERNEL_PANIC ;
 int KERNEL_UP_AND_RUNNING ;
 TYPE_1__ MUnit ;
 int SELF_TEST_FAILED ;
 int src_readl (struct aac_dev*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aac_src_check_health(struct aac_dev *dev)
{
 u32 status = src_readl(dev, MUnit.OMR);




 if (unlikely(status & SELF_TEST_FAILED))
  return -1;




 if (unlikely(status & KERNEL_PANIC))
  return (status >> 16) & 0xFF;



 if (unlikely(!(status & KERNEL_UP_AND_RUNNING)))
  return -3;



 return 0;
}
