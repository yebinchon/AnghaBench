
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thr; } ;


 int out_8 (int *,char) ;
 int udbg_550_flush () ;
 TYPE_1__* udbg_comport ;

__attribute__((used)) static void udbg_550_putc(char c)
{
 if (udbg_comport) {
  if (c == '\n')
   udbg_550_putc('\r');
  udbg_550_flush();
  out_8(&udbg_comport->thr, c);
 }
}
