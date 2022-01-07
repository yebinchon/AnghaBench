
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int minor; } ;
struct TYPE_4__ {unsigned int* dmabuf_size; unsigned int ai_data_len; int ai_flags; int ai_n_realscanlen; int useeoshandle; int ai_scans; unsigned int* dmabuf_use_size; int ai_n_scanlen; int* dmabuf_panic_size; int* dmabuf_hw; scalar_t__ iobase_a; scalar_t__ dma_actbuf; int ai_neverending; } ;
struct TYPE_3__ {int half_fifo_size; } ;


 int A2P_HI_PRIORITY ;
 int AINT_WRITE_COMPL ;
 scalar_t__ AMCC_OP_REG_INTCSR ;
 scalar_t__ AMCC_OP_REG_MCSR ;
 scalar_t__ AMCC_OP_REG_MWAR ;
 scalar_t__ AMCC_OP_REG_MWTC ;
 int DPRINTK (char*,...) ;
 int EN_A2P_TRANSFERS ;
 int RESET_A2P_FLAGS ;
 int TRIG_WAKE_EOS ;
 TYPE_2__* devpriv ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int printk (char*,int ,unsigned int,...) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int Compute_and_setup_dma(struct comedi_device *dev)
{
 unsigned int dmalen0, dmalen1, i;

 DPRINTK("adl_pci9118 EDBG: BGN: Compute_and_setup_dma()\n");
 dmalen0 = devpriv->dmabuf_size[0];
 dmalen1 = devpriv->dmabuf_size[1];
 DPRINTK("1 dmalen0=%d dmalen1=%d ai_data_len=%d\n", dmalen0, dmalen1,
  devpriv->ai_data_len);

 if (dmalen0 > (devpriv->ai_data_len)) {
  dmalen0 = devpriv->ai_data_len & ~3L;
 }
 if (dmalen1 > (devpriv->ai_data_len)) {
  dmalen1 = devpriv->ai_data_len & ~3L;
 }
 DPRINTK("2 dmalen0=%d dmalen1=%d \n", dmalen0, dmalen1);


 if (devpriv->ai_flags & TRIG_WAKE_EOS) {
  if (dmalen0 < (devpriv->ai_n_realscanlen << 1)) {

   devpriv->ai_flags &= (~TRIG_WAKE_EOS);
   printk
       ("comedi%d: WAR: DMA0 buf too short, cann't support TRIG_WAKE_EOS (%d<%d)\n",
        dev->minor, dmalen0,
        devpriv->ai_n_realscanlen << 1);
  } else {

   dmalen0 = devpriv->ai_n_realscanlen << 1;
   DPRINTK
       ("21 dmalen0=%d ai_n_realscanlen=%d useeoshandle=%d\n",
        dmalen0, devpriv->ai_n_realscanlen,
        devpriv->useeoshandle);
   if (devpriv->useeoshandle)
    dmalen0 += 2;
   if (dmalen0 < 4) {
    printk
        ("comedi%d: ERR: DMA0 buf len bug? (%d<4)\n",
         dev->minor, dmalen0);
    dmalen0 = 4;
   }
  }
 }
 if (devpriv->ai_flags & TRIG_WAKE_EOS) {
  if (dmalen1 < (devpriv->ai_n_realscanlen << 1)) {

   devpriv->ai_flags &= (~TRIG_WAKE_EOS);
   printk
       ("comedi%d: WAR: DMA1 buf too short, cann't support TRIG_WAKE_EOS (%d<%d)\n",
        dev->minor, dmalen1,
        devpriv->ai_n_realscanlen << 1);
  } else {

   dmalen1 = devpriv->ai_n_realscanlen << 1;
   DPRINTK
       ("22 dmalen1=%d ai_n_realscanlen=%d useeoshandle=%d\n",
        dmalen1, devpriv->ai_n_realscanlen,
        devpriv->useeoshandle);
   if (devpriv->useeoshandle)
    dmalen1 -= 2;
   if (dmalen1 < 4) {
    printk
        ("comedi%d: ERR: DMA1 buf len bug? (%d<4)\n",
         dev->minor, dmalen1);
    dmalen1 = 4;
   }
  }
 }

 DPRINTK("3 dmalen0=%d dmalen1=%d \n", dmalen0, dmalen1);

 if (!(devpriv->ai_flags & TRIG_WAKE_EOS)) {

  i = dmalen0;
  dmalen0 =
      (dmalen0 / (devpriv->ai_n_realscanlen << 1)) *
      (devpriv->ai_n_realscanlen << 1);
  dmalen0 &= ~3L;
  if (!dmalen0)
   dmalen0 = i;
  i = dmalen1;
  dmalen1 =
      (dmalen1 / (devpriv->ai_n_realscanlen << 1)) *
      (devpriv->ai_n_realscanlen << 1);
  dmalen1 &= ~3L;
  if (!dmalen1)
   dmalen1 = i;

  if (!devpriv->ai_neverending) {

   if (dmalen0 >
       ((devpriv->ai_n_realscanlen << 1) *
        devpriv->ai_scans)) {
    DPRINTK
        ("3.0 ai_n_realscanlen=%d ai_scans=%d \n",
         devpriv->ai_n_realscanlen,
         devpriv->ai_scans);
    dmalen0 =
        (devpriv->ai_n_realscanlen << 1) *
        devpriv->ai_scans;
    DPRINTK("3.1 dmalen0=%d dmalen1=%d \n", dmalen0,
     dmalen1);
    dmalen0 &= ~3L;
   } else {
    if (dmalen1 >
        ((devpriv->ai_n_realscanlen << 1) *
         devpriv->ai_scans - dmalen0))
     dmalen1 =
         (devpriv->ai_n_realscanlen << 1) *
         devpriv->ai_scans - dmalen0;
    DPRINTK("3.2 dmalen0=%d dmalen1=%d \n", dmalen0,
     dmalen1);
    dmalen1 &= ~3L;
   }
  }
 }

 DPRINTK("4 dmalen0=%d dmalen1=%d \n", dmalen0, dmalen1);


 devpriv->dma_actbuf = 0;
 devpriv->dmabuf_use_size[0] = dmalen0;
 devpriv->dmabuf_use_size[1] = dmalen1;

 DPRINTK("5 dmalen0=%d dmalen1=%d \n", dmalen0, dmalen1);
 outl(inl(devpriv->iobase_a + AMCC_OP_REG_MCSR) & (~EN_A2P_TRANSFERS), devpriv->iobase_a + AMCC_OP_REG_MCSR);
 outl(devpriv->dmabuf_hw[0], devpriv->iobase_a + AMCC_OP_REG_MWAR);
 outl(devpriv->dmabuf_use_size[0], devpriv->iobase_a + AMCC_OP_REG_MWTC);

 outl(0x00000000 | AINT_WRITE_COMPL,
      devpriv->iobase_a + AMCC_OP_REG_INTCSR);


 outl(inl(devpriv->iobase_a +
   AMCC_OP_REG_MCSR) | RESET_A2P_FLAGS | A2P_HI_PRIORITY |
      EN_A2P_TRANSFERS, devpriv->iobase_a + AMCC_OP_REG_MCSR);
 outl(inl(devpriv->iobase_a + AMCC_OP_REG_INTCSR) | EN_A2P_TRANSFERS, devpriv->iobase_a + AMCC_OP_REG_INTCSR);

 DPRINTK("adl_pci9118 EDBG: END: Compute_and_setup_dma()\n");
 return 0;
}
