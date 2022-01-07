
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* exit ) () ;} ;


 TYPE_1__ platform_ops ;
 int stub1 () ;

__attribute__((used)) static inline void exit(void)
{
 if (platform_ops.exit)
  platform_ops.exit();
 for(;;);
}
