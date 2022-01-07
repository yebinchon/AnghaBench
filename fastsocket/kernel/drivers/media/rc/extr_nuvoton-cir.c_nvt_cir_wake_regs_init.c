
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvt_dev {int dummy; } ;


 int CIR_RX_LIMIT_COUNT ;
 int CIR_WAKE_CMP_TOLERANCE ;
 int CIR_WAKE_FIFOCON ;
 int CIR_WAKE_FIFOCON_RX_TRIGGER_LEV ;
 int CIR_WAKE_FIFO_CMP_BYTES ;
 int CIR_WAKE_FIFO_CMP_DEEP ;
 int CIR_WAKE_FIFO_CMP_TOL ;
 int CIR_WAKE_IRCON ;
 int CIR_WAKE_IRCON_MODE0 ;
 int CIR_WAKE_IRCON_R ;
 int CIR_WAKE_IRCON_RXEN ;
 int CIR_WAKE_IRCON_RXINV ;
 int CIR_WAKE_IRCON_SAMPLE_PERIOD_SEL ;
 int CIR_WAKE_IRSTS ;
 int CIR_WAKE_SLCH ;
 int CIR_WAKE_SLCL ;
 int nvt_cir_wake_reg_write (struct nvt_dev*,int,int ) ;
 int nvt_clear_cir_wake_fifo (struct nvt_dev*) ;

__attribute__((used)) static void nvt_cir_wake_regs_init(struct nvt_dev *nvt)
{

 nvt_cir_wake_reg_write(nvt, CIR_WAKE_FIFO_CMP_BYTES,
          CIR_WAKE_FIFO_CMP_DEEP);


 nvt_cir_wake_reg_write(nvt, CIR_WAKE_CMP_TOLERANCE,
          CIR_WAKE_FIFO_CMP_TOL);


 nvt_cir_wake_reg_write(nvt, CIR_RX_LIMIT_COUNT >> 8, CIR_WAKE_SLCH);
 nvt_cir_wake_reg_write(nvt, CIR_RX_LIMIT_COUNT & 0xff, CIR_WAKE_SLCL);


 nvt_cir_wake_reg_write(nvt, CIR_WAKE_FIFOCON_RX_TRIGGER_LEV,
          CIR_WAKE_FIFOCON);





 nvt_cir_wake_reg_write(nvt, CIR_WAKE_IRCON_MODE0 | CIR_WAKE_IRCON_RXEN |
          CIR_WAKE_IRCON_R | CIR_WAKE_IRCON_RXINV |
          CIR_WAKE_IRCON_SAMPLE_PERIOD_SEL,
          CIR_WAKE_IRCON);


 nvt_clear_cir_wake_fifo(nvt);


 nvt_cir_wake_reg_write(nvt, 0xff, CIR_WAKE_IRSTS);
}
