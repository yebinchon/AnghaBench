
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtip_port {TYPE_2__* dd; scalar_t__ mmio; } ;
struct TYPE_4__ {TYPE_1__* pdev; int dd_flag; } ;
struct TYPE_3__ {int dev; } ;


 int MTIP_DDF_REMOVE_PENDING_BIT ;
 scalar_t__ PORT_CMD ;
 int PORT_CMD_LIST_ON ;
 scalar_t__ PORT_SCR_CTL ;
 scalar_t__ PORT_SCR_STAT ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 unsigned long jiffies ;
 int mdelay (int) ;
 unsigned long msecs_to_jiffies (int) ;
 int mtip_enable_engine (struct mtip_port*,int ) ;
 scalar_t__ mtip_hba_reset (TYPE_2__*) ;
 int mtip_init_port (struct mtip_port*) ;
 int mtip_start_port (struct mtip_port*) ;
 int readl (scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mtip_restart_port(struct mtip_port *port)
{
 unsigned long timeout;


 mtip_enable_engine(port, 0);


 timeout = jiffies + msecs_to_jiffies(500);
 while ((readl(port->mmio + PORT_CMD) & PORT_CMD_LIST_ON)
   && time_before(jiffies, timeout))
  ;

 if (test_bit(MTIP_DDF_REMOVE_PENDING_BIT, &port->dd->dd_flag))
  return;





 if (readl(port->mmio + PORT_CMD) & PORT_CMD_LIST_ON) {
  dev_warn(&port->dd->pdev->dev,
   "PxCMD.CR not clear, escalating reset\n");

  if (mtip_hba_reset(port->dd))
   dev_err(&port->dd->pdev->dev,
    "HBA reset escalation failed.\n");


  mdelay(30);
 }

 dev_warn(&port->dd->pdev->dev, "Issuing COM reset\n");


 writel(readl(port->mmio + PORT_SCR_CTL) |
    1, port->mmio + PORT_SCR_CTL);
 readl(port->mmio + PORT_SCR_CTL);


 timeout = jiffies + msecs_to_jiffies(1);
 while (time_before(jiffies, timeout))
  ;

 if (test_bit(MTIP_DDF_REMOVE_PENDING_BIT, &port->dd->dd_flag))
  return;


 writel(readl(port->mmio + PORT_SCR_CTL) & ~1,
    port->mmio + PORT_SCR_CTL);
 readl(port->mmio + PORT_SCR_CTL);


 timeout = jiffies + msecs_to_jiffies(500);
 while (((readl(port->mmio + PORT_SCR_STAT) & 0x01) == 0)
    && time_before(jiffies, timeout))
  ;

 if (test_bit(MTIP_DDF_REMOVE_PENDING_BIT, &port->dd->dd_flag))
  return;

 if ((readl(port->mmio + PORT_SCR_STAT) & 0x01) == 0)
  dev_warn(&port->dd->pdev->dev,
   "COM reset failed\n");

 mtip_init_port(port);
 mtip_start_port(port);

}
