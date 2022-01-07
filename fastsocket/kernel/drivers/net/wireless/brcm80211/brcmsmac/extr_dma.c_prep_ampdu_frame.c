
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct brcms_ampdu_session {int dummy; } ;
struct dma_info {struct brcms_ampdu_session ampdu_session; } ;


 int ENOSPC ;
 int WARN_ON (int) ;
 int ampdu_finalize (struct dma_info*) ;
 int brcms_c_ampdu_add_frame (struct brcms_ampdu_session*,struct sk_buff*) ;

__attribute__((used)) static void prep_ampdu_frame(struct dma_info *di, struct sk_buff *p)
{
 struct brcms_ampdu_session *session = &di->ampdu_session;
 int ret;

 ret = brcms_c_ampdu_add_frame(session, p);
 if (ret == -ENOSPC) {




  ampdu_finalize(di);
  ret = brcms_c_ampdu_add_frame(session, p);
 }

 WARN_ON(ret);
}
