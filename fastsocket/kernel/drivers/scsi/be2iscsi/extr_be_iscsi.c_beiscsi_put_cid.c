
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cxns_per_ctrl; } ;
struct beiscsi_hba {unsigned short* cid_array; scalar_t__ cid_free; TYPE_1__ params; int avlbl_cids; } ;



__attribute__((used)) static void beiscsi_put_cid(struct beiscsi_hba *phba, unsigned short cid)
{
 phba->avlbl_cids++;
 phba->cid_array[phba->cid_free++] = cid;
 if (phba->cid_free == phba->params.cxns_per_ctrl)
  phba->cid_free = 0;
}
