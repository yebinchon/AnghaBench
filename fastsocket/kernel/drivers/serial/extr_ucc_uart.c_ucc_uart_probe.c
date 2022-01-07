
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int line; scalar_t__ irq; unsigned int uartclk; int fifosize; int flags; int iotype; int * ops; int * dev; int lock; scalar_t__ mapbase; } ;
struct TYPE_3__ {scalar_t__ rx_clock; scalar_t__ tx_clock; int ucc_num; scalar_t__ irq; int init_tx; int init_rx; int tx_bd_ring_len; int rx_bd_ring_len; scalar_t__ regs; } ;
struct uart_qe_port {unsigned int ucc_num; TYPE_2__ port; TYPE_1__ us_info; int tx_nrfifos; int rx_nrfifos; int wait_closing; int rx_fifosize; int tx_fifosize; struct device_node* np; } ;
struct resource {scalar_t__ start; } ;
struct qe_firmware_info {int id; } ;
struct of_device_id {int dummy; } ;
struct of_device {int dev; struct device_node* node; } ;
struct device_node {int dummy; } ;
typedef scalar_t__ phys_addr_t ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int FW_ACTION_HOTPLUG ;
 int GFP_KERNEL ;
 scalar_t__ NO_IRQ ;
 scalar_t__ QE_BRG1 ;
 scalar_t__ QE_BRG16 ;
 int RX_BUF_SIZE ;
 int RX_NUM_FIFO ;
 int SERIAL_QE_MAJOR ;
 scalar_t__ SERIAL_QE_MINOR ;
 int THIS_MODULE ;
 int TX_BUF_SIZE ;
 int TX_NUM_FIFO ;
 unsigned int const UCC_MAX_NUM ;
 int UCC_MAX_UART ;
 int UCC_WAIT_CLOSING ;
 int UPF_BOOT_AUTOCONF ;
 int UPF_IOREMAP ;
 int UPIO_MEM ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,...) ;
 int dev_set_drvdata (int *,struct uart_qe_port*) ;
 int firmware_loaded ;
 scalar_t__ irq_of_parse_and_map (struct device_node*,int ) ;
 int kfree (struct uart_qe_port*) ;
 struct uart_qe_port* kzalloc (int,int ) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 struct device_node* of_find_node_by_type (int *,char*) ;
 scalar_t__ of_find_property (struct device_node*,char*,int *) ;
 void* of_get_property (struct device_node*,char*,int *) ;
 void* qe_clock_source (char const*) ;
 struct qe_firmware_info* qe_get_firmware_info () ;
 int qe_uart_pops ;
 int request_firmware_nowait (int ,int ,char*,int *,int ,int *,int ) ;
 unsigned int soc_info (unsigned int*,unsigned int*) ;
 int soft_uart ;
 int spin_lock_init (int *) ;
 int sprintf (char*,char*,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ strstr (int ,char*) ;
 int uart_add_one_port (int *,TYPE_2__*) ;
 int uart_firmware_cont ;
 int ucc_uart_driver ;

__attribute__((used)) static int ucc_uart_probe(struct of_device *ofdev,
 const struct of_device_id *match)
{
 struct device_node *np = ofdev->node;
 const unsigned int *iprop;
 const char *sprop;
 struct uart_qe_port *qe_port = ((void*)0);
 struct resource res;
 int ret;




 if (of_find_property(np, "soft-uart", ((void*)0))) {
  dev_dbg(&ofdev->dev, "using Soft-UART mode\n");
  soft_uart = 1;
 }





 if (soft_uart) {
  struct qe_firmware_info *qe_fw_info;

  qe_fw_info = qe_get_firmware_info();


  if (qe_fw_info && strstr(qe_fw_info->id, "Soft-UART")) {
   firmware_loaded = 1;
  } else {
   char filename[32];
   unsigned int soc;
   unsigned int rev_h;
   unsigned int rev_l;

   soc = soc_info(&rev_h, &rev_l);
   if (!soc) {
    dev_err(&ofdev->dev, "unknown CPU model\n");
    return -ENXIO;
   }
   sprintf(filename, "fsl_qe_ucode_uart_%u_%u%u.bin",
    soc, rev_h, rev_l);

   dev_info(&ofdev->dev, "waiting for firmware %s\n",
    filename);
   ret = request_firmware_nowait(THIS_MODULE,
    FW_ACTION_HOTPLUG, filename, &ofdev->dev,
    GFP_KERNEL, &ofdev->dev, uart_firmware_cont);
   if (ret) {
    dev_err(&ofdev->dev,
     "could not load firmware %s\n",
     filename);
    return ret;
   }
  }
 }

 qe_port = kzalloc(sizeof(struct uart_qe_port), GFP_KERNEL);
 if (!qe_port) {
  dev_err(&ofdev->dev, "can't allocate QE port structure\n");
  return -ENOMEM;
 }


 ret = of_address_to_resource(np, 0, &res);
 if (ret) {
  dev_err(&ofdev->dev, "missing 'reg' property in device tree\n");
  kfree(qe_port);
  return ret;
 }
 if (!res.start) {
  dev_err(&ofdev->dev, "invalid 'reg' property in device tree\n");
  kfree(qe_port);
  return -EINVAL;
 }
 qe_port->port.mapbase = res.start;



 iprop = of_get_property(np, "cell-index", ((void*)0));
 if (!iprop) {
  iprop = of_get_property(np, "device-id", ((void*)0));
  if (!iprop) {
   kfree(qe_port);
   dev_err(&ofdev->dev, "UCC is unspecified in "
    "device tree\n");
   return -EINVAL;
  }
 }

 if ((*iprop < 1) || (*iprop > UCC_MAX_NUM)) {
  dev_err(&ofdev->dev, "no support for UCC%u\n", *iprop);
  kfree(qe_port);
  return -ENODEV;
 }
 qe_port->ucc_num = *iprop - 1;
 sprop = of_get_property(np, "rx-clock-name", ((void*)0));
 if (!sprop) {
  dev_err(&ofdev->dev, "missing rx-clock-name in device tree\n");
  kfree(qe_port);
  return -ENODEV;
 }

 qe_port->us_info.rx_clock = qe_clock_source(sprop);
 if ((qe_port->us_info.rx_clock < QE_BRG1) ||
     (qe_port->us_info.rx_clock > QE_BRG16)) {
  dev_err(&ofdev->dev, "rx-clock-name must be a BRG for UART\n");
  kfree(qe_port);
  return -ENODEV;
 }





 sprop = of_get_property(np, "tx-clock-name", ((void*)0));
 if (!sprop) {
  dev_err(&ofdev->dev, "missing tx-clock-name in device tree\n");
  kfree(qe_port);
  return -ENODEV;
 }
 qe_port->us_info.tx_clock = qe_clock_source(sprop);

 if ((qe_port->us_info.tx_clock < QE_BRG1) ||
     (qe_port->us_info.tx_clock > QE_BRG16)) {
  dev_err(&ofdev->dev, "tx-clock-name must be a BRG for UART\n");
  kfree(qe_port);
  return -ENODEV;
 }


 iprop = of_get_property(np, "port-number", ((void*)0));
 if (!iprop) {
  dev_err(&ofdev->dev, "missing port-number in device tree\n");
  kfree(qe_port);
  return -EINVAL;
 }
 qe_port->port.line = *iprop;
 if (qe_port->port.line >= UCC_MAX_UART) {
  dev_err(&ofdev->dev, "port-number must be 0-%u\n",
   UCC_MAX_UART - 1);
  kfree(qe_port);
  return -EINVAL;
 }

 qe_port->port.irq = irq_of_parse_and_map(np, 0);
 if (qe_port->port.irq == NO_IRQ) {
  dev_err(&ofdev->dev, "could not map IRQ for UCC%u\n",
         qe_port->ucc_num + 1);
  kfree(qe_port);
  return -EINVAL;
 }





 np = of_find_compatible_node(((void*)0), ((void*)0), "fsl,qe");
 if (!np) {
  np = of_find_node_by_type(((void*)0), "qe");
  if (!np) {
   dev_err(&ofdev->dev, "could not find 'qe' node\n");
   kfree(qe_port);
   return -EINVAL;
  }
 }

 iprop = of_get_property(np, "brg-frequency", ((void*)0));
 if (!iprop) {
  dev_err(&ofdev->dev,
         "missing brg-frequency in device tree\n");
  kfree(qe_port);
  return -EINVAL;
 }

 if (*iprop)
  qe_port->port.uartclk = *iprop;
 else {





  iprop = of_get_property(np, "bus-frequency", ((void*)0));
  if (!iprop) {
   dev_err(&ofdev->dev,
    "missing QE bus-frequency in device tree\n");
   kfree(qe_port);
   return -EINVAL;
  }
  if (*iprop)
   qe_port->port.uartclk = *iprop / 2;
  else {
   dev_err(&ofdev->dev,
    "invalid QE bus-frequency in device tree\n");
   kfree(qe_port);
   return -EINVAL;
  }
 }

 spin_lock_init(&qe_port->port.lock);
 qe_port->np = np;
 qe_port->port.dev = &ofdev->dev;
 qe_port->port.ops = &qe_uart_pops;
 qe_port->port.iotype = UPIO_MEM;

 qe_port->tx_nrfifos = TX_NUM_FIFO;
 qe_port->tx_fifosize = TX_BUF_SIZE;
 qe_port->rx_nrfifos = RX_NUM_FIFO;
 qe_port->rx_fifosize = RX_BUF_SIZE;

 qe_port->wait_closing = UCC_WAIT_CLOSING;
 qe_port->port.fifosize = 512;
 qe_port->port.flags = UPF_BOOT_AUTOCONF | UPF_IOREMAP;

 qe_port->us_info.ucc_num = qe_port->ucc_num;
 qe_port->us_info.regs = (phys_addr_t) res.start;
 qe_port->us_info.irq = qe_port->port.irq;

 qe_port->us_info.rx_bd_ring_len = qe_port->rx_nrfifos;
 qe_port->us_info.tx_bd_ring_len = qe_port->tx_nrfifos;


 qe_port->us_info.init_tx = 1;
 qe_port->us_info.init_rx = 1;





 ret = uart_add_one_port(&ucc_uart_driver, &qe_port->port);
 if (ret) {
  dev_err(&ofdev->dev, "could not add /dev/ttyQE%u\n",
         qe_port->port.line);
  kfree(qe_port);
  return ret;
 }

 dev_set_drvdata(&ofdev->dev, qe_port);

 dev_info(&ofdev->dev, "UCC%u assigned to /dev/ttyQE%u\n",
  qe_port->ucc_num + 1, qe_port->port.line);


 dev_dbg(&ofdev->dev, "mknod command is 'mknod /dev/ttyQE%u c %u %u'\n",
        qe_port->port.line, SERIAL_QE_MAJOR,
        SERIAL_QE_MINOR + qe_port->port.line);

 return 0;
}
