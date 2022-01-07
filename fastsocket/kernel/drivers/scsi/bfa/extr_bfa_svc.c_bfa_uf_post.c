
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_uf_buf_post_s {int mh; } ;
struct bfa_uf_s {size_t uf_tag; int qe; } ;
struct bfa_uf_mod_s {int uf_posted_q; int bfa; int * uf_buf_posts; } ;
typedef int bfa_status_t ;


 int BFA_REQQ_FCXP ;
 int BFA_STATUS_FAILED ;
 int BFA_STATUS_OK ;
 struct bfi_uf_buf_post_s* bfa_reqq_next (int ,int ) ;
 int bfa_reqq_produce (int ,int ,int ) ;
 int bfa_trc (int ,size_t) ;
 int list_add_tail (int *,int *) ;
 int memcpy (struct bfi_uf_buf_post_s*,int *,int) ;

__attribute__((used)) static bfa_status_t
bfa_uf_post(struct bfa_uf_mod_s *ufm, struct bfa_uf_s *uf)
{
 struct bfi_uf_buf_post_s *uf_post_msg;

 uf_post_msg = bfa_reqq_next(ufm->bfa, BFA_REQQ_FCXP);
 if (!uf_post_msg)
  return BFA_STATUS_FAILED;

 memcpy(uf_post_msg, &ufm->uf_buf_posts[uf->uf_tag],
        sizeof(struct bfi_uf_buf_post_s));
 bfa_reqq_produce(ufm->bfa, BFA_REQQ_FCXP, uf_post_msg->mh);

 bfa_trc(ufm->bfa, uf->uf_tag);

 list_add_tail(&uf->qe, &ufm->uf_posted_q);
 return BFA_STATUS_OK;
}
