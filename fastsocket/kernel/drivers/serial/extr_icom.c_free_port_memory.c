
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct icom_port {int * xmitRestart; int xmitRestart_pci; int * statStg; int statStg_pci; int * xmit_buf; int xmit_buf_pci; int * recv_buf; int recv_buf_pci; TYPE_1__* adapter; } ;
struct TYPE_2__ {struct pci_dev* pci_dev; } ;


 int pci_free_consistent (struct pci_dev*,int,int *,int ) ;
 int trace (struct icom_port*,char*,int ) ;

__attribute__((used)) static void free_port_memory(struct icom_port *icom_port)
{
 struct pci_dev *dev = icom_port->adapter->pci_dev;

 trace(icom_port, "RET_PORT_MEM", 0);
 if (icom_port->recv_buf) {
  pci_free_consistent(dev, 4096, icom_port->recv_buf,
        icom_port->recv_buf_pci);
  icom_port->recv_buf = ((void*)0);
 }
 if (icom_port->xmit_buf) {
  pci_free_consistent(dev, 4096, icom_port->xmit_buf,
        icom_port->xmit_buf_pci);
  icom_port->xmit_buf = ((void*)0);
 }
 if (icom_port->statStg) {
  pci_free_consistent(dev, 4096, icom_port->statStg,
        icom_port->statStg_pci);
  icom_port->statStg = ((void*)0);
 }

 if (icom_port->xmitRestart) {
  pci_free_consistent(dev, 4096, icom_port->xmitRestart,
        icom_port->xmitRestart_pci);
  icom_port->xmitRestart = ((void*)0);
 }
}
