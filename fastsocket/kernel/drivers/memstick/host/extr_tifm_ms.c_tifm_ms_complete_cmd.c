
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tifm_ms {TYPE_1__* req; scalar_t__ use_dma; int timer; struct tifm_dev* dev; } ;
struct tifm_dev {int dev; scalar_t__ addr; } ;
struct memstick_host {int dummy; } ;
struct TYPE_2__ {int int_reg; scalar_t__ data_dir; int sg; } ;


 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 scalar_t__ READ ;
 scalar_t__ SOCK_CONTROL ;
 scalar_t__ SOCK_DMA_CONTROL ;
 scalar_t__ SOCK_DMA_FIFO_INT_ENABLE_CLEAR ;
 scalar_t__ SOCK_MS_STATUS ;
 int TIFM_CTRL_LED ;
 int TIFM_DMA_RESET ;
 int TIFM_FIFO_INT_SETALL ;
 int del_timer (int *) ;
 int dev_dbg (int *,char*) ;
 int memstick_next_req (struct memstick_host*,TYPE_1__**) ;
 int readl (scalar_t__) ;
 struct memstick_host* tifm_get_drvdata (struct tifm_dev*) ;
 scalar_t__ tifm_ms_issue_cmd (struct tifm_ms*) ;
 int tifm_unmap_sg (struct tifm_dev*,int *,int,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void tifm_ms_complete_cmd(struct tifm_ms *host)
{
 struct tifm_dev *sock = host->dev;
 struct memstick_host *msh = tifm_get_drvdata(sock);
 int rc;

 del_timer(&host->timer);

 host->req->int_reg = readl(sock->addr + SOCK_MS_STATUS) & 0xff;
 host->req->int_reg = (host->req->int_reg & 1)
        | ((host->req->int_reg << 4) & 0xe0);

 writel(TIFM_FIFO_INT_SETALL,
        sock->addr + SOCK_DMA_FIFO_INT_ENABLE_CLEAR);
 writel(TIFM_DMA_RESET, sock->addr + SOCK_DMA_CONTROL);

 if (host->use_dma) {
  tifm_unmap_sg(sock, &host->req->sg, 1,
         host->req->data_dir == READ
         ? PCI_DMA_FROMDEVICE
         : PCI_DMA_TODEVICE);
 }

 writel((~TIFM_CTRL_LED) & readl(sock->addr + SOCK_CONTROL),
        sock->addr + SOCK_CONTROL);

 dev_dbg(&sock->dev, "TPC complete\n");
 do {
  rc = memstick_next_req(msh, &host->req);
 } while (!rc && tifm_ms_issue_cmd(host));
}
