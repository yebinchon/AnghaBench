
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s2io_nic {TYPE_1__* pdev; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int free_irq (int ,struct net_device*) ;

__attribute__((used)) static void remove_inta_isr(struct s2io_nic *sp)
{
 struct net_device *dev = sp->dev;

 free_irq(sp->pdev->irq, dev);
}
