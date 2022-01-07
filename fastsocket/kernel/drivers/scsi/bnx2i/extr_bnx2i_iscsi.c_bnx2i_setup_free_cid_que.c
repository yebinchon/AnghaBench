
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* cid_que; int cid_q_max_idx; int cid_free_cnt; int ** conn_cid_tbl; scalar_t__ cid_q_cons_idx; scalar_t__ cid_q_prod_idx; int * cid_que_base; } ;
struct bnx2i_hba {int max_active_conns; TYPE_1__ cid_que; } ;
struct bnx2i_conn {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int kfree (int *) ;
 void* kmalloc (int,int ) ;

__attribute__((used)) static int bnx2i_setup_free_cid_que(struct bnx2i_hba *hba)
{
 int mem_size;
 int i;

 mem_size = hba->max_active_conns * sizeof(u32);
 mem_size = (mem_size + (PAGE_SIZE - 1)) & PAGE_MASK;

 hba->cid_que.cid_que_base = kmalloc(mem_size, GFP_KERNEL);
 if (!hba->cid_que.cid_que_base)
  return -ENOMEM;

 mem_size = hba->max_active_conns * sizeof(struct bnx2i_conn *);
 mem_size = (mem_size + (PAGE_SIZE - 1)) & PAGE_MASK;
 hba->cid_que.conn_cid_tbl = kmalloc(mem_size, GFP_KERNEL);
 if (!hba->cid_que.conn_cid_tbl) {
  kfree(hba->cid_que.cid_que_base);
  hba->cid_que.cid_que_base = ((void*)0);
  return -ENOMEM;
 }

 hba->cid_que.cid_que = (u32 *)hba->cid_que.cid_que_base;
 hba->cid_que.cid_q_prod_idx = 0;
 hba->cid_que.cid_q_cons_idx = 0;
 hba->cid_que.cid_q_max_idx = hba->max_active_conns;
 hba->cid_que.cid_free_cnt = hba->max_active_conns;

 for (i = 0; i < hba->max_active_conns; i++) {
  hba->cid_que.cid_que[i] = i;
  hba->cid_que.conn_cid_tbl[i] = ((void*)0);
 }
 return 0;
}
