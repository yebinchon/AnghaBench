
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct ohci_iso_recv {int ohci; } ;
struct hpsb_iso {struct ohci_iso_recv* hostdata; } ;


 int OHCI1394_IRMultiChanMaskHiClear ;
 int OHCI1394_IRMultiChanMaskHiSet ;
 int OHCI1394_IRMultiChanMaskLoClear ;
 int OHCI1394_IRMultiChanMaskLoSet ;
 int OHCI1394_IsochronousCycleTimer ;
 int mb () ;
 int reg_read (int ,int ) ;
 int reg_write (int ,int ,int) ;

__attribute__((used)) static void ohci_iso_recv_set_channel_mask(struct hpsb_iso *iso, u64 mask)
{
 struct ohci_iso_recv *recv = iso->hostdata;
 int i;

 for (i = 0; i < 64; i++) {
  if (mask & (1ULL << i)) {
   if (i < 32)
    reg_write(recv->ohci, OHCI1394_IRMultiChanMaskLoSet, (1 << i));
   else
    reg_write(recv->ohci, OHCI1394_IRMultiChanMaskHiSet, (1 << (i-32)));
  } else {
   if (i < 32)
    reg_write(recv->ohci, OHCI1394_IRMultiChanMaskLoClear, (1 << i));
   else
    reg_write(recv->ohci, OHCI1394_IRMultiChanMaskHiClear, (1 << (i-32)));
  }
 }


 mb();
 reg_read(recv->ohci, OHCI1394_IsochronousCycleTimer);
}
