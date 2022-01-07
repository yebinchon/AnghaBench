
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h; int l; } ;
struct msr_info {TYPE_1__ reg; int msr_no; int err; } ;


 int wrmsr_safe (int ,int ,int ) ;

__attribute__((used)) static void __wrmsr_safe_on_cpu(void *info)
{
 struct msr_info *rv = info;

 rv->err = wrmsr_safe(rv->msr_no, rv->reg.l, rv->reg.h);
}
