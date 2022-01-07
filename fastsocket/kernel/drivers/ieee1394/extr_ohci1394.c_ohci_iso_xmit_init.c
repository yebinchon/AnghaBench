
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int context; } ;
struct ohci_iso_xmit {int task_active; int last_cycle; scalar_t__ CommandPtr; scalar_t__ ContextControlClear; scalar_t__ ContextControlSet; TYPE_3__ task; TYPE_2__* ohci; int prog; } ;
struct iso_xmit_cmd {int dummy; } ;
struct hpsb_iso {int buf_packets; int skips; TYPE_1__* host; struct ohci_iso_xmit* hostdata; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {TYPE_2__* hostdata; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ OHCI1394_IsoXmitCommandPtr ;
 scalar_t__ OHCI1394_IsoXmitContextControlClear ;
 scalar_t__ OHCI1394_IsoXmitContextControlSet ;
 int OHCI_ISO_TRANSMIT ;
 int atomic_set (int *,int ) ;
 scalar_t__ dma_prog_region_alloc (int *,unsigned int,int ) ;
 int dma_prog_region_init (int *) ;
 struct ohci_iso_xmit* kmalloc (int,int ) ;
 int ohci1394_init_iso_tasklet (TYPE_3__*,int ,int ,unsigned long) ;
 scalar_t__ ohci1394_register_iso_tasklet (TYPE_2__*,TYPE_3__*) ;
 int ohci_iso_xmit_shutdown (struct hpsb_iso*) ;
 int ohci_iso_xmit_task ;

__attribute__((used)) static int ohci_iso_xmit_init(struct hpsb_iso *iso)
{
 struct ohci_iso_xmit *xmit;
 unsigned int prog_size;
 int ctx;
 int ret = -ENOMEM;

 xmit = kmalloc(sizeof(*xmit), GFP_KERNEL);
 if (!xmit)
  return -ENOMEM;

 iso->hostdata = xmit;
 xmit->ohci = iso->host->hostdata;
 xmit->task_active = 0;
 xmit->last_cycle = -1;
 atomic_set(&iso->skips, 0);

 dma_prog_region_init(&xmit->prog);

 prog_size = sizeof(struct iso_xmit_cmd) * iso->buf_packets;

 if (dma_prog_region_alloc(&xmit->prog, prog_size, xmit->ohci->dev))
  goto err;

 ohci1394_init_iso_tasklet(&xmit->task, OHCI_ISO_TRANSMIT,
      ohci_iso_xmit_task, (unsigned long) iso);

 if (ohci1394_register_iso_tasklet(xmit->ohci, &xmit->task) < 0) {
  ret = -EBUSY;
  goto err;
 }

 xmit->task_active = 1;


 ctx = xmit->task.context;
 xmit->ContextControlSet = OHCI1394_IsoXmitContextControlSet + 16 * ctx;
 xmit->ContextControlClear = OHCI1394_IsoXmitContextControlClear + 16 * ctx;
 xmit->CommandPtr = OHCI1394_IsoXmitCommandPtr + 16 * ctx;

 return 0;

err:
 ohci_iso_xmit_shutdown(iso);
 return ret;
}
