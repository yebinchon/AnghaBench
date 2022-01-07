
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel {int flags; int * trans_skb; } ;


 int CHANNEL_FLAGS_BUFSIZE_CHANGED ;
 int ctcm_ch_alloc_buffer (struct channel*) ;
 int dev_kfree_skb (int *) ;

__attribute__((used)) static inline int ctcm_checkalloc_buffer(struct channel *ch)
{
 if (ch->trans_skb == ((void*)0))
  return ctcm_ch_alloc_buffer(ch);
 if (ch->flags & CHANNEL_FLAGS_BUFSIZE_CHANGED) {
  dev_kfree_skb(ch->trans_skb);
  return ctcm_ch_alloc_buffer(ch);
 }
 return 0;
}
