
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_iso_recv {int ohci; } ;
struct hpsb_iso {struct ohci_iso_recv* hostdata; } ;


 int OHCI1394_IRMultiChanMaskHiClear ;
 int OHCI1394_IRMultiChanMaskHiSet ;
 int OHCI1394_IRMultiChanMaskLoClear ;
 int OHCI1394_IRMultiChanMaskLoSet ;
 int OHCI1394_IsochronousCycleTimer ;
 int mb () ;
 int reg_read (int ,int ) ;
 int reg_write (int ,int,int) ;

__attribute__((used)) static void ohci_iso_recv_change_channel(struct hpsb_iso *iso, unsigned char channel, int listen)
{
 struct ohci_iso_recv *recv = iso->hostdata;
 int reg, i;

 if (channel < 32) {
  reg = listen ? OHCI1394_IRMultiChanMaskLoSet : OHCI1394_IRMultiChanMaskLoClear;
  i = channel;
 } else {
  reg = listen ? OHCI1394_IRMultiChanMaskHiSet : OHCI1394_IRMultiChanMaskHiClear;
  i = channel - 32;
 }

 reg_write(recv->ohci, reg, (1 << i));


 mb();
 reg_read(recv->ohci, OHCI1394_IsochronousCycleTimer);
}
