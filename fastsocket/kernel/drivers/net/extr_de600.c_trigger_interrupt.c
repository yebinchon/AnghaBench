
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int DE600_SLOW_DOWN ;
 int FLIP_IRQ ;
 int de600_put_command (int ) ;
 int select_nic () ;
 int select_prn () ;

__attribute__((used)) static inline void trigger_interrupt(struct net_device *dev)
{
 de600_put_command(FLIP_IRQ);
 select_prn();
 DE600_SLOW_DOWN;
 select_nic();
 de600_put_command(0);
}
