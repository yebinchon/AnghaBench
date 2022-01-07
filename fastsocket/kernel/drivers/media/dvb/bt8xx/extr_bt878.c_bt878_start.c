
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bt878 {int risc_dma; } ;


 int BT878_AFBUS ;
 int BT878_AFDSR ;
 int BT878_AFTRGT ;
 int BT878_AGPIO_DMA_CTL ;
 int BT878_AINT_MASK ;
 int BT878_AOCERR ;
 int BT878_APABORT ;
 int BT878_APPERR ;
 int BT878_ARIPERR ;
 int BT878_ARISCI ;
 int BT878_ARISC_START ;
 int BT878_ASCERR ;
 int bt878_risc_program (struct bt878*,int) ;
 int btwrite (int,int ) ;
 int dprintk (char*,int) ;

void bt878_start(struct bt878 *bt, u32 controlreg, u32 op_sync_orin,
  u32 irq_err_ignore)
{
 u32 int_mask;

 dprintk("bt878 debug: bt878_start (ctl=%8.8x)\n", controlreg);



 bt878_risc_program(bt, op_sync_orin);
 controlreg &= ~0x1f;
 controlreg |= 0x1b;

 btwrite(bt->risc_dma, BT878_ARISC_START);
 int_mask = BT878_ASCERR | BT878_AOCERR | BT878_APABORT |
  BT878_ARIPERR | BT878_APPERR | BT878_AFDSR | BT878_AFTRGT |
  BT878_AFBUS | BT878_ARISCI;



 int_mask &= ~irq_err_ignore;

 btwrite(int_mask, BT878_AINT_MASK);
 btwrite(controlreg, BT878_AGPIO_DMA_CTL);
}
