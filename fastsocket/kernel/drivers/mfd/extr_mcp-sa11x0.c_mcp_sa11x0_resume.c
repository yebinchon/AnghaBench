
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct mcp {int dummy; } ;
struct TYPE_2__ {int mccr0; int mccr1; } ;


 int Ser4MCCR0 ;
 int Ser4MCCR1 ;
 struct mcp* platform_get_drvdata (struct platform_device*) ;
 TYPE_1__* priv (struct mcp*) ;

__attribute__((used)) static int mcp_sa11x0_resume(struct platform_device *dev)
{
 struct mcp *mcp = platform_get_drvdata(dev);

 Ser4MCCR1 = priv(mcp)->mccr1;
 Ser4MCCR0 = priv(mcp)->mccr0;

 return 0;
}
