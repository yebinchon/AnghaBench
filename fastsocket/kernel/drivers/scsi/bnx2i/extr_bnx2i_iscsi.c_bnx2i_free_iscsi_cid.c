
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {int cid_q_prod_idx; size_t* cid_que; int cid_q_max_idx; int ** conn_cid_tbl; int cid_free_cnt; } ;
struct bnx2i_hba {TYPE_1__ cid_que; } ;



__attribute__((used)) static void bnx2i_free_iscsi_cid(struct bnx2i_hba *hba, u16 iscsi_cid)
{
 int idx;

 if (iscsi_cid == (u16) -1)
  return;

 hba->cid_que.cid_free_cnt++;

 idx = hba->cid_que.cid_q_prod_idx;
 hba->cid_que.cid_que[idx] = iscsi_cid;
 hba->cid_que.conn_cid_tbl[iscsi_cid] = ((void*)0);
 hba->cid_que.cid_q_prod_idx++;
 if (hba->cid_que.cid_q_prod_idx == hba->cid_que.cid_q_max_idx)
  hba->cid_que.cid_q_prod_idx = 0;
}
