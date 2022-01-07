
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void** ui; } ;
typedef TYPE_1__ addr64 ;


 int SPU_RdSigNotify1 ;
 int SPU_RdSigNotify2 ;
 int build_dma_list (TYPE_1__) ;
 int enqueue_putllc (TYPE_1__) ;
 int fetch_regs_from_mem (TYPE_1__) ;
 int read_llar_status () ;
 int read_tag_status () ;
 int restore_complete () ;
 int restore_decr () ;
 int restore_event_mask () ;
 int restore_fpcr () ;
 int restore_srr0 () ;
 int restore_tag_mask () ;
 int restore_upper_240kb (TYPE_1__) ;
 int set_event_mask () ;
 int set_tag_mask () ;
 int set_tag_update () ;
 void* spu_readch (int ) ;
 int write_ppu_mb () ;
 int write_ppuint_mb () ;

int main()
{
 addr64 lscsa_ea;

 lscsa_ea.ui[0] = spu_readch(SPU_RdSigNotify1);
 lscsa_ea.ui[1] = spu_readch(SPU_RdSigNotify2);
 fetch_regs_from_mem(lscsa_ea);

 set_event_mask();
 set_tag_mask();
 build_dma_list(lscsa_ea);
 restore_upper_240kb(lscsa_ea);

 enqueue_putllc(lscsa_ea);
 set_tag_update();
 read_tag_status();
 restore_decr();
 read_llar_status();
 write_ppu_mb();
 write_ppuint_mb();
 restore_fpcr();
 restore_srr0();
 restore_event_mask();
 restore_tag_mask();

 restore_complete();

 return 0;
}
