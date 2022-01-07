
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cxns_per_ctrl; } ;
struct beiscsi_hba {unsigned short* cid_array; scalar_t__ cid_alloc; int avlbl_cids; TYPE_1__ params; } ;



__attribute__((used)) static int beiscsi_get_cid(struct beiscsi_hba *phba)
{
 unsigned short cid = 0xFFFF;

 if (!phba->avlbl_cids)
  return cid;

 cid = phba->cid_array[phba->cid_alloc++];
 if (phba->cid_alloc == phba->params.cxns_per_ctrl)
  phba->cid_alloc = 0;
 phba->avlbl_cids--;
 return cid;
}
