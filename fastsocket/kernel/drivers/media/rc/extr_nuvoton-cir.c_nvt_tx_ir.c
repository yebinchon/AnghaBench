
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct rc_dev {struct nvt_dev* priv; } ;
struct TYPE_2__ {size_t buf_count; scalar_t__ tx_state; int lock; int queue; scalar_t__ cur_buf_num; int buf; } ;
struct nvt_dev {TYPE_1__ tx; } ;


 int CIR_FIFOCON ;
 int CIR_FIFOCON_RXFIFOCLR ;
 int CIR_FIFOCON_TX_TRIGGER_LEV_8 ;
 int CIR_IREN ;
 int CIR_IREN_TFU ;
 int CIR_IREN_TTR ;
 int CIR_STXFIFO ;
 scalar_t__ ST_TX_NONE ;
 scalar_t__ ST_TX_REPLY ;
 scalar_t__ ST_TX_REQUEST ;
 void* TX_BUF_LEN ;
 int memcpy (int ,int*,size_t) ;
 int nvt_cir_reg_read (struct nvt_dev*,int ) ;
 int nvt_cir_reg_write (struct nvt_dev*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int nvt_tx_ir(struct rc_dev *dev, int *txbuf, u32 n)
{
 struct nvt_dev *nvt = dev->priv;
 unsigned long flags;
 size_t cur_count;
 unsigned int i;
 u8 iren;
 int ret;

 spin_lock_irqsave(&nvt->tx.lock, flags);

 if (n >= TX_BUF_LEN) {
  nvt->tx.buf_count = cur_count = TX_BUF_LEN;
  ret = TX_BUF_LEN;
 } else {
  nvt->tx.buf_count = cur_count = n;
  ret = n;
 }

 memcpy(nvt->tx.buf, txbuf, nvt->tx.buf_count);

 nvt->tx.cur_buf_num = 0;


 iren = nvt_cir_reg_read(nvt, CIR_IREN);


 nvt_cir_reg_write(nvt, CIR_IREN_TFU | CIR_IREN_TTR, CIR_IREN);

 nvt->tx.tx_state = ST_TX_REPLY;

 nvt_cir_reg_write(nvt, CIR_FIFOCON_TX_TRIGGER_LEV_8 |
     CIR_FIFOCON_RXFIFOCLR, CIR_FIFOCON);


 for (i = 0; i < 9; i++)
  nvt_cir_reg_write(nvt, 0x01, CIR_STXFIFO);

 spin_unlock_irqrestore(&nvt->tx.lock, flags);

 wait_event(nvt->tx.queue, nvt->tx.tx_state == ST_TX_REQUEST);

 spin_lock_irqsave(&nvt->tx.lock, flags);
 nvt->tx.tx_state = ST_TX_NONE;
 spin_unlock_irqrestore(&nvt->tx.lock, flags);


 nvt_cir_reg_write(nvt, iren, CIR_IREN);

 return ret;
}
