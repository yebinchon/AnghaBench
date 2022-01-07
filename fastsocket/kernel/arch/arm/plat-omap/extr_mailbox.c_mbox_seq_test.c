
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int seq_rcv; } ;
typedef int mbox_msg_t ;


 int enable_seq_bit ;

__attribute__((used)) static inline int mbox_seq_test(struct omap_mbox *mbox, mbox_msg_t msg)
{
 mbox_msg_t seq;

 if (!enable_seq_bit)
  return 0;

 seq = msg & (1 << 31);
 if (seq == mbox->seq_rcv)
  return -1;
 mbox->seq_rcv = seq;
 return 0;
}
