
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fritz_adapter {int (* read_hdlc_status ) (struct fritz_adapter*,int) ;int * bcs; } ;


 int DBG (int,char*,char,int) ;
 int HDLC_INT_MASK ;
 int hdlc_irq_one (int *,int) ;
 int stub1 (struct fritz_adapter*,int) ;

__attribute__((used)) static inline void hdlc_irq(struct fritz_adapter *adapter)
{
 int nr;
 u32 stat;

 for (nr = 0; nr < 2; nr++) {
  stat = adapter->read_hdlc_status(adapter, nr);
  DBG(0x10, "HDLC %c stat %#x", 'A' + nr, stat);
  if (stat & HDLC_INT_MASK)
   hdlc_irq_one(&adapter->bcs[nr], stat);
 }
}
