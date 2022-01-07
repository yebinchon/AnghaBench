
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dw_i2c_dev {int status; scalar_t__ base; int adapter; } ;


 scalar_t__ DW_IC_INTR_MASK ;
 int DW_IC_INTR_STOP_DET ;
 int DW_IC_INTR_TX_ABRT ;
 int DW_IC_INTR_TX_EMPTY ;
 int STATUS_WRITE_IN_PROGRESS ;
 int i2c_dw_read (int *) ;
 int i2c_dw_xfer_msg (int *) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void dw_i2c_pump_msg(unsigned long data)
{
 struct dw_i2c_dev *dev = (struct dw_i2c_dev *) data;
 u16 intr_mask;

 i2c_dw_read(&dev->adapter);
 i2c_dw_xfer_msg(&dev->adapter);

 intr_mask = DW_IC_INTR_STOP_DET | DW_IC_INTR_TX_ABRT;
 if (dev->status & STATUS_WRITE_IN_PROGRESS)
  intr_mask |= DW_IC_INTR_TX_EMPTY;
 writew(intr_mask, dev->base + DW_IC_INTR_MASK);
}
