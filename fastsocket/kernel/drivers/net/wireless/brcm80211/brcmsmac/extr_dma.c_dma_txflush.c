
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pub {int dummy; } ;
struct brcms_ampdu_session {int skb_list; } ;
struct dma_info {struct brcms_ampdu_session ampdu_session; } ;


 int ampdu_finalize (struct dma_info*) ;
 int skb_queue_empty (int *) ;

void dma_txflush(struct dma_pub *pub)
{
 struct dma_info *di = (struct dma_info *)pub;
 struct brcms_ampdu_session *session = &di->ampdu_session;

 if (!skb_queue_empty(&session->skb_list))
  ampdu_finalize(di);
}
