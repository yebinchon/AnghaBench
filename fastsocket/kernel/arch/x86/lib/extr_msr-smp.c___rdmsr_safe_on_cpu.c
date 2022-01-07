
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h; int l; } ;
struct msr_info {TYPE_1__ reg; int msr_no; int err; } ;


 int rdmsr_safe (int ,int *,int *) ;

__attribute__((used)) static void __rdmsr_safe_on_cpu(void *info)
{
 struct msr_info *rv = info;

 rv->err = rdmsr_safe(rv->msr_no, &rv->reg.l, &rv->reg.h);
}
