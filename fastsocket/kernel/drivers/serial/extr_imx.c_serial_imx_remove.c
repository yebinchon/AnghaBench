
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct imxuart_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct imxuart_platform_data {int (* exit ) (struct platform_device*) ;} ;
struct TYPE_4__ {int membase; } ;
struct imx_port {TYPE_2__ port; int clk; } ;


 int clk_disable (int ) ;
 int clk_put (int ) ;
 int imx_reg ;
 int iounmap (int ) ;
 int kfree (struct imx_port*) ;
 struct imx_port* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int stub1 (struct platform_device*) ;
 int uart_remove_one_port (int *,TYPE_2__*) ;

__attribute__((used)) static int serial_imx_remove(struct platform_device *pdev)
{
 struct imxuart_platform_data *pdata;
 struct imx_port *sport = platform_get_drvdata(pdev);

 pdata = pdev->dev.platform_data;

 platform_set_drvdata(pdev, ((void*)0));

 if (sport) {
  uart_remove_one_port(&imx_reg, &sport->port);
  clk_put(sport->clk);
 }

 clk_disable(sport->clk);

 if (pdata->exit)
  pdata->exit(pdev);

 iounmap(sport->port.membase);
 kfree(sport);

 return 0;
}
