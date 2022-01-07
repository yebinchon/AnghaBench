
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvt_dev {int dummy; } ;


 int CIR_FIFOCON ;
 int CIR_FIFOCON_RXFIFOCLR ;
 int nvt_cir_reg_read (struct nvt_dev*,int ) ;
 int nvt_cir_reg_write (struct nvt_dev*,int,int ) ;

__attribute__((used)) static void nvt_clear_cir_fifo(struct nvt_dev *nvt)
{
 u8 val;

 val = nvt_cir_reg_read(nvt, CIR_FIFOCON);
 nvt_cir_reg_write(nvt, val | CIR_FIFOCON_RXFIFOCLR, CIR_FIFOCON);
}
