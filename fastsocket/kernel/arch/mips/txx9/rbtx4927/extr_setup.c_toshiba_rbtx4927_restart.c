
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _machine_halt () ;
 int rbtx4927_softreset_addr ;
 int rbtx4927_softresetlock_addr ;
 int readb (int ) ;
 int stub1 () ;
 int writeb (int,int ) ;

__attribute__((used)) static void toshiba_rbtx4927_restart(char *command)
{

 writeb(1, rbtx4927_softresetlock_addr);


 while (!(readb(rbtx4927_softresetlock_addr) & 1))
  ;


 writeb(1, rbtx4927_softreset_addr);


 (*_machine_halt)();
}
