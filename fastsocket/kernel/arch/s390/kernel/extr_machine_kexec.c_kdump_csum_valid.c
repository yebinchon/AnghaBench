
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {scalar_t__ start; } ;


 int EINVAL ;
 int __raw_local_irq_stnsm (int) ;
 int __raw_local_irq_stosm (int) ;

__attribute__((used)) static int kdump_csum_valid(struct kimage *image)
{
 return -EINVAL;

}
