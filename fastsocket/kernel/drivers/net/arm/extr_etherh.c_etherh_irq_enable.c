
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct etherh_priv {int dummy; } ;
struct TYPE_3__ {struct etherh_priv* irq_data; } ;
typedef TYPE_1__ ecard_t ;


 int ETHERH_CP_IE ;
 int etherh_set_ctrl (struct etherh_priv*,int ) ;

__attribute__((used)) static void etherh_irq_enable(ecard_t *ec, int irqnr)
{
 struct etherh_priv *eh = ec->irq_data;

 etherh_set_ctrl(eh, ETHERH_CP_IE);
}
