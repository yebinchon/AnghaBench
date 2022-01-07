
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int seq_rcv; } ;


 int enable_seq_bit ;

__attribute__((used)) static inline void mbox_seq_init(struct omap_mbox *mbox)
{
 if (!enable_seq_bit)
  return;


 mbox->seq_rcv = 0xffffffff;
}
