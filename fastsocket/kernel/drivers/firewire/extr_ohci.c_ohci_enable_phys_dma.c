
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_ohci {int generation; int lock; } ;
struct fw_card {int dummy; } ;


 int ESTALE ;
 int LOCAL_BUS ;
 int OHCI1394_PhyReqFilterHiSet ;
 int OHCI1394_PhyReqFilterLoSet ;
 int flush_writes (struct fw_ohci*) ;
 struct fw_ohci* fw_ohci (struct fw_card*) ;
 int reg_write (struct fw_ohci*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ohci_enable_phys_dma(struct fw_card *card,
    int node_id, int generation)
{



 struct fw_ohci *ohci = fw_ohci(card);
 unsigned long flags;
 int n, ret = 0;






 spin_lock_irqsave(&ohci->lock, flags);

 if (ohci->generation != generation) {
  ret = -ESTALE;
  goto out;
 }






 n = (node_id & 0xffc0) == LOCAL_BUS ? node_id & 0x3f : 63;
 if (n < 32)
  reg_write(ohci, OHCI1394_PhyReqFilterLoSet, 1 << n);
 else
  reg_write(ohci, OHCI1394_PhyReqFilterHiSet, 1 << (n - 32));

 flush_writes(ohci);
 out:
 spin_unlock_irqrestore(&ohci->lock, flags);

 return ret;

}
