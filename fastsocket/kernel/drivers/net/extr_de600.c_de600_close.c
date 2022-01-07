
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int DE600_IRQ ;
 int RESET ;
 int STOP_RESET ;
 int de600_put_command (int ) ;
 int free_irq (int ,struct net_device*) ;
 scalar_t__ rx_page ;
 int select_nic () ;
 int select_prn () ;

__attribute__((used)) static int de600_close(struct net_device *dev)
{
 select_nic();
 rx_page = 0;
 de600_put_command(RESET);
 de600_put_command(STOP_RESET);
 de600_put_command(0);
 select_prn();
 free_irq(DE600_IRQ, dev);
 return 0;
}
