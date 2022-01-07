
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fritz_bcs {scalar_t__ rcvidx; unsigned char* rcvbuf; scalar_t__ channel; struct fritz_adapter* adapter; } ;
struct fritz_adapter {int type; int hw_lock; scalar_t__ io; } ;


 scalar_t__ AVM_DATA ;



 scalar_t__ AVM_HDLC_FIFO_1 ;
 scalar_t__ AVM_HDLC_FIFO_2 ;
 unsigned char AVM_IDX_HDLC_1 ;
 unsigned char AVM_IDX_HDLC_2 ;
 scalar_t__ AVM_INDEX ;
 int DBG (int,char*,...) ;
 scalar_t__ HDLC_FIFO ;
 scalar_t__ HSCX_BUFMAX ;
 int insb (scalar_t__,unsigned char*,int) ;
 int insl (scalar_t__,unsigned char*,int) ;
 int outb (unsigned char,scalar_t__) ;
 int outl (unsigned char,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void hdlc_empty_fifo(struct fritz_bcs *bcs, int count)
{
 struct fritz_adapter *adapter = bcs->adapter;
 unsigned char *p;
 unsigned char idx = bcs->channel ? AVM_IDX_HDLC_2 : AVM_IDX_HDLC_1;

 DBG(0x10, "hdlc_empty_fifo %d", count);
 if (bcs->rcvidx + count > HSCX_BUFMAX) {
  DBG(0x10, "hdlc_empty_fifo: incoming packet too large");
  return;
 }
 p = bcs->rcvbuf + bcs->rcvidx;
 bcs->rcvidx += count;
 switch (adapter->type) {
 case 130:
  spin_lock(&adapter->hw_lock);
  outl(idx, adapter->io + AVM_INDEX);
  insl(adapter->io + AVM_DATA + HDLC_FIFO,
       p, (count + 3) / 4);
  spin_unlock(&adapter->hw_lock);
  break;
 case 129:
  insl(adapter->io +
       (bcs->channel ? AVM_HDLC_FIFO_2 : AVM_HDLC_FIFO_1),
       p, (count + 3) / 4);
  break;
 case 128:
  spin_lock(&adapter->hw_lock);
  outb(idx, adapter->io + AVM_INDEX);
  insb(adapter->io + AVM_DATA, p, count);
  spin_unlock(&adapter->hw_lock);
  break;
 }
}
