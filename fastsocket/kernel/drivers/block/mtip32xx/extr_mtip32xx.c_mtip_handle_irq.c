
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtip_port {scalar_t__ mmio; } ;
struct driver_data {scalar_t__ mmio; int dd_flag; int pdev; struct mtip_port* port; } ;
typedef int irqreturn_t ;


 scalar_t__ HOST_IRQ_STAT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MTIP_DDF_REMOVE_PENDING_BIT ;
 int PORT_IRQ_ERR ;
 int PORT_IRQ_LEGACY ;
 int PORT_IRQ_SDB_FIS ;
 scalar_t__ PORT_IRQ_STAT ;
 scalar_t__ likely (int) ;
 int mtip_check_surprise_removal (int ) ;
 int mtip_command_cleanup (struct driver_data*) ;
 int mtip_process_errors (struct driver_data*,int) ;
 int mtip_process_legacy (struct driver_data*,int) ;
 int mtip_process_sdbf (struct driver_data*) ;
 int readl (scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline irqreturn_t mtip_handle_irq(struct driver_data *data)
{
 struct driver_data *dd = (struct driver_data *) data;
 struct mtip_port *port = dd->port;
 u32 hba_stat, port_stat;
 int rv = IRQ_NONE;

 hba_stat = readl(dd->mmio + HOST_IRQ_STAT);
 if (hba_stat) {
  rv = IRQ_HANDLED;


  port_stat = readl(port->mmio + PORT_IRQ_STAT);
  writel(port_stat, port->mmio + PORT_IRQ_STAT);


  if (likely(port_stat & PORT_IRQ_SDB_FIS))
   mtip_process_sdbf(dd);

  if (unlikely(port_stat & PORT_IRQ_ERR)) {
   if (unlikely(mtip_check_surprise_removal(dd->pdev))) {
    mtip_command_cleanup(dd);

    return IRQ_HANDLED;
   }
   if (test_bit(MTIP_DDF_REMOVE_PENDING_BIT,
       &dd->dd_flag))
    return rv;

   mtip_process_errors(dd, port_stat & PORT_IRQ_ERR);
  }

  if (unlikely(port_stat & PORT_IRQ_LEGACY))
   mtip_process_legacy(dd, port_stat & PORT_IRQ_LEGACY);
 }


 writel(hba_stat, dd->mmio + HOST_IRQ_STAT);

 return rv;
}
