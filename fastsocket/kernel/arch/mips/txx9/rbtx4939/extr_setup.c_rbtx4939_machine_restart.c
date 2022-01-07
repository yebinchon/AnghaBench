
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int rbtx4939_reseten_addr ;
 int rbtx4939_softreset_addr ;
 int writeb (int,int ) ;

__attribute__((used)) static void rbtx4939_machine_restart(char *command)
{
 local_irq_disable();
 writeb(1, rbtx4939_reseten_addr);
 writeb(1, rbtx4939_softreset_addr);
 while (1)
  ;
}
