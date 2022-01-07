
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial_private {int nr; scalar_t__* line; int dev; TYPE_1__* quirk; } ;
struct TYPE_2__ {int (* init ) (int ) ;} ;


 int serial8250_resume_port (scalar_t__) ;
 int stub1 (int ) ;

void pciserial_resume_ports(struct serial_private *priv)
{
 int i;




 if (priv->quirk->init)
  priv->quirk->init(priv->dev);

 for (i = 0; i < priv->nr; i++)
  if (priv->line[i] >= 0)
   serial8250_resume_port(priv->line[i]);
}
