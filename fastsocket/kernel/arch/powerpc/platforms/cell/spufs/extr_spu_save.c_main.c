
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void** ui; } ;
typedef TYPE_1__ addr64 ;


 int SPU_RdSigNotify1 ;
 int SPU_RdSigNotify2 ;
 int build_dma_list (TYPE_1__) ;
 int enqueue_putllc (TYPE_1__) ;
 int enqueue_sync (TYPE_1__) ;
 int read_llar_status () ;
 int read_tag_status () ;
 int save_complete () ;
 int save_decr () ;
 int save_event_mask () ;
 int save_fpcr () ;
 int save_srr0 () ;
 int save_tag_mask () ;
 int save_upper_240kb (TYPE_1__) ;
 int set_event_mask () ;
 int set_tag_mask () ;
 int set_tag_update () ;
 int spill_regs_to_mem (TYPE_1__) ;
 void* spu_readch (int ) ;

int main()
{
 addr64 lscsa_ea;

 lscsa_ea.ui[0] = spu_readch(SPU_RdSigNotify1);
 lscsa_ea.ui[1] = spu_readch(SPU_RdSigNotify2);


 save_event_mask();
 save_tag_mask();
 set_event_mask();
 set_tag_mask();
 build_dma_list(lscsa_ea);
 save_upper_240kb(lscsa_ea);

 save_fpcr();
 save_decr();
 save_srr0();
 enqueue_putllc(lscsa_ea);
 spill_regs_to_mem(lscsa_ea);
 enqueue_sync(lscsa_ea);
 set_tag_update();
 read_tag_status();
 read_llar_status();
 save_complete();

 return 0;
}
