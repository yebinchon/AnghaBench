
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int SG_handle; } ;
struct ivtv {int i_flags; TYPE_1__ udma; } ;


 int IVTV_DEBUG_DMA (char*) ;
 int IVTV_F_I_DMA ;
 int IVTV_F_I_UDMA ;
 int IVTV_F_I_UDMA_PENDING ;
 int IVTV_REG_DECDMAADDR ;
 int IVTV_REG_DMAXFER ;
 int clear_bit (int ,int *) ;
 int read_reg (int ) ;
 int set_bit (int ,int *) ;
 int write_reg (int ,int ) ;
 int write_reg_sync (int,int ) ;

void ivtv_udma_start(struct ivtv *itv)
{
 IVTV_DEBUG_DMA("start UDMA\n");
 write_reg(itv->udma.SG_handle, IVTV_REG_DECDMAADDR);
 write_reg_sync(read_reg(IVTV_REG_DMAXFER) | 0x01, IVTV_REG_DMAXFER);
 set_bit(IVTV_F_I_DMA, &itv->i_flags);
 set_bit(IVTV_F_I_UDMA, &itv->i_flags);
 clear_bit(IVTV_F_I_UDMA_PENDING, &itv->i_flags);
}
