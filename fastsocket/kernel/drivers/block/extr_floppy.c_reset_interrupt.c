
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ reset; } ;
struct TYPE_3__ {int (* redo ) () ;int (* error ) () ;} ;


 TYPE_2__* FDCS ;
 TYPE_1__* cont ;
 int debugt (char*) ;
 int printk (char*,int (*) ()) ;
 int result () ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static void reset_interrupt(void)
{
 debugt("reset interrupt:");
 result();
 if (FDCS->reset) {
  printk("reset set in interrupt, calling %p\n", cont->error);
  cont->error();
 }
 cont->redo();
}
