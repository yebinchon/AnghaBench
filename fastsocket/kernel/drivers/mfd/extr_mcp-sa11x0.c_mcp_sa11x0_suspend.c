
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct mcp {int dummy; } ;
typedef int pm_message_t ;
struct TYPE_2__ {int mccr1; int mccr0; } ;


 int MCCR0_MCE ;
 int Ser4MCCR0 ;
 int Ser4MCCR1 ;
 struct mcp* platform_get_drvdata (struct platform_device*) ;
 TYPE_1__* priv (struct mcp*) ;

__attribute__((used)) static int mcp_sa11x0_suspend(struct platform_device *dev, pm_message_t state)
{
 struct mcp *mcp = platform_get_drvdata(dev);

 priv(mcp)->mccr0 = Ser4MCCR0;
 priv(mcp)->mccr1 = Ser4MCCR1;
 Ser4MCCR0 &= ~MCCR0_MCE;

 return 0;
}
