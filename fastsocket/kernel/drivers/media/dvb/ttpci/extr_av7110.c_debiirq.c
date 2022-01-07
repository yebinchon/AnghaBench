
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int recording; } ;
struct av7110 {int debitype; int* debi_virt; int debilen; int debilock; int * num; int ci_rbuffer; TYPE_1__* ci_slot; int * handle2filter; int * p2t; TYPE_2__ demux; int dev; } ;
typedef int s8 ;
struct TYPE_3__ {int flags; } ;


 int ARM_ClearMailBox (struct av7110*) ;
 int CA_CI_MODULE_PRESENT ;
 int CA_CI_MODULE_READY ;
 int CI_handle (struct av7110*,int*,int) ;
 int DEBINOSWAP ;
 int DMX_OK ;
 int DvbDmxFilterCallback (int*,int,int *,int ,int ,int ,struct av7110*) ;
 int PSR ;
 unsigned int RX_BUFF ;
 int Reserved_SIZE ;
 int SSR ;
 unsigned int TX_BUFF ;
 int av7110_record_cb (int *,int*,int) ;
 int * chtrans (unsigned char) ;
 int ci_get_data (int *,int*,int) ;
 int dprintk (int,char*,...) ;
 int dvb_dmx_swfilter_packets (TYPE_2__*,int const*,int) ;
 int iwdebi (struct av7110*,int ,unsigned int,int ,int) ;
 int jiffies ;
 int print_time (char*) ;
 int printk (char*,...) ;
 int saa7146_read (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void debiirq(unsigned long cookie)
{
 struct av7110 *av7110 = (struct av7110 *)cookie;
 int type = av7110->debitype;
 int handle = (type >> 8) & 0x1f;
 unsigned int xfer = 0;

 print_time("debi");
 dprintk(4, "type 0x%04x\n", type);

 if (type == -1) {
  printk("DEBI irq oops @ %ld, psr:0x%08x, ssr:0x%08x\n",
         jiffies, saa7146_read(av7110->dev, PSR),
         saa7146_read(av7110->dev, SSR));
  goto debi_done;
 }
 av7110->debitype = -1;

 switch (type & 0xff) {

 case 128:
  dvb_dmx_swfilter_packets(&av7110->demux,
      (const u8 *) av7110->debi_virt,
      av7110->debilen / 188);
  xfer = RX_BUFF;
  break;

 case 130:
  if (av7110->demux.recording)
   av7110_record_cb(&av7110->p2t[handle],
      (u8 *) av7110->debi_virt,
      av7110->debilen);
  xfer = RX_BUFF;
  break;

 case 132:
 case 133:
 case 129:
  if (av7110->handle2filter[handle])
   DvbDmxFilterCallback((u8 *)av7110->debi_virt,
          av7110->debilen, ((void*)0), 0,
          av7110->handle2filter[handle],
          DMX_OK, av7110);
  xfer = RX_BUFF;
  break;

 case 137:
 {
  u8 *data = av7110->debi_virt;

  if ((data[0] < 2) && data[2] == 0xff) {
   int flags = 0;
   if (data[5] > 0)
    flags |= CA_CI_MODULE_PRESENT;
   if (data[5] > 5)
    flags |= CA_CI_MODULE_READY;
   av7110->ci_slot[data[0]].flags = flags;
  } else
   ci_get_data(&av7110->ci_rbuffer,
        av7110->debi_virt,
        av7110->debilen);
  xfer = RX_BUFF;
  break;
 }

 case 135:
  CI_handle(av7110, (u8 *)av7110->debi_virt, av7110->debilen);
  xfer = RX_BUFF;
  break;

 case 134:
  ((s8*)av7110->debi_virt)[Reserved_SIZE - 1] = 0;
  printk("%s\n", (s8 *) av7110->debi_virt);
  xfer = RX_BUFF;
  break;

 case 136:
  dprintk(4, "debi DATA_CI_PUT\n");
 case 131:
  dprintk(4, "debi DATA_MPEG_PLAY\n");
 case 138:
  dprintk(4, "debi DATA_BMP_LOAD\n");
  xfer = TX_BUFF;
  break;
 default:
  break;
 }
debi_done:
 spin_lock(&av7110->debilock);
 if (xfer)
  iwdebi(av7110, DEBINOSWAP, xfer, 0, 2);
 ARM_ClearMailBox(av7110);
 spin_unlock(&av7110->debilock);
}
