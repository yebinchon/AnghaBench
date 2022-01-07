
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * conn_cid_tbl; int * cid_que_base; } ;
struct bnx2i_hba {TYPE_1__ cid_que; } ;


 int kfree (int *) ;

__attribute__((used)) static void bnx2i_release_free_cid_que(struct bnx2i_hba *hba)
{
 kfree(hba->cid_que.cid_que_base);
 hba->cid_que.cid_que_base = ((void*)0);

 kfree(hba->cid_que.conn_cid_tbl);
 hba->cid_que.conn_cid_tbl = ((void*)0);
}
