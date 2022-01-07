
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int seq_snd; } ;
typedef int mbox_msg_t ;


 int enable_seq_bit ;

__attribute__((used)) static inline void mbox_seq_toggle(struct omap_mbox *mbox, mbox_msg_t * msg)
{
 if (!enable_seq_bit)
  return;


 *msg = (*msg & 0x7fffffff) | mbox->seq_snd;

 mbox->seq_snd ^= 1 << 31;
}
