
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* redo ) () ;int (* done ) (int) ;int (* error ) () ;} ;


 TYPE_1__* cont ;
 int interpret_errors () ;
 int stub1 () ;
 int stub2 (int) ;
 int stub3 () ;

__attribute__((used)) static void format_interrupt(void)
{
 switch (interpret_errors()) {
 case 1:
  cont->error();
 case 2:
  break;
 case 0:
  cont->done(1);
 }
 cont->redo();
}
