
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct bfa_iocfc_s {TYPE_1__* cfginfo; } ;
struct bfa_s {struct bfa_iocfc_s iocfc; } ;
struct TYPE_2__ {int * ioim_snsbase; scalar_t__ sense_buf_len; } ;


 scalar_t__ BFI_IOIM_SNSLEN ;
 int bfa_dma_be_addr_set (int ,int ) ;

void
bfa_iocfc_set_snsbase(struct bfa_s *bfa, int seg_no, u64 snsbase_pa)
{
 struct bfa_iocfc_s *iocfc = &bfa->iocfc;

 iocfc->cfginfo->sense_buf_len = (BFI_IOIM_SNSLEN - 1);
 bfa_dma_be_addr_set(iocfc->cfginfo->ioim_snsbase[seg_no], snsbase_pa);
}
