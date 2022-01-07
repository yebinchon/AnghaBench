
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvt_dev {int dummy; } ;


 int CIR_FIFOCON ;
 int CIR_FIFOCON_RX_TRIGGER_LEV ;
 int CIR_FIFOCON_TX_TRIGGER_LEV ;
 int CIR_IRCON ;
 int CIR_IRCON_RXEN ;
 int CIR_IRCON_RXINV ;
 int CIR_IRCON_SAMPLE_PERIOD_SEL ;
 int CIR_IRCON_TXEN ;
 int CIR_IRSTS ;
 int CIR_RX_LIMIT_COUNT ;
 int CIR_SLCH ;
 int CIR_SLCL ;
 int nvt_cir_reg_write (struct nvt_dev*,int,int ) ;
 int nvt_clear_cir_fifo (struct nvt_dev*) ;
 int nvt_clear_tx_fifo (struct nvt_dev*) ;
 int nvt_set_cir_iren (struct nvt_dev*) ;

__attribute__((used)) static void nvt_cir_regs_init(struct nvt_dev *nvt)
{

 nvt_cir_reg_write(nvt, CIR_RX_LIMIT_COUNT >> 8, CIR_SLCH);
 nvt_cir_reg_write(nvt, CIR_RX_LIMIT_COUNT & 0xff, CIR_SLCL);


 nvt_cir_reg_write(nvt, CIR_FIFOCON_TX_TRIGGER_LEV |
     CIR_FIFOCON_RX_TRIGGER_LEV, CIR_FIFOCON);





 nvt_cir_reg_write(nvt,
     CIR_IRCON_TXEN | CIR_IRCON_RXEN |
     CIR_IRCON_RXINV | CIR_IRCON_SAMPLE_PERIOD_SEL,
     CIR_IRCON);


 nvt_clear_cir_fifo(nvt);
 nvt_clear_tx_fifo(nvt);


 nvt_cir_reg_write(nvt, 0xff, CIR_IRSTS);


 nvt_set_cir_iren(nvt);
}
