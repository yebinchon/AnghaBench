
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct smsc911x_data {TYPE_1__ config; scalar_t__ ioaddr; } ;


 int BUG () ;
 int SMSC911X_SWAP_FIFO ;
 int SMSC911X_USE_16BIT ;
 int SMSC911X_USE_32BIT ;
 scalar_t__ TX_DATA_FIFO ;
 int smsc911x_reg_write (struct smsc911x_data*,scalar_t__,int ) ;
 int swab32 (int ) ;
 int writesl (scalar_t__,unsigned int*,unsigned int) ;

__attribute__((used)) static inline void
smsc911x_tx_writefifo(struct smsc911x_data *pdata, unsigned int *buf,
        unsigned int wordcount)
{
 if (pdata->config.flags & SMSC911X_SWAP_FIFO) {
  while (wordcount--)
   smsc911x_reg_write(pdata, TX_DATA_FIFO, swab32(*buf++));
  return;
 }

 if (pdata->config.flags & SMSC911X_USE_32BIT) {
  writesl(pdata->ioaddr + TX_DATA_FIFO, buf, wordcount);
  return;
 }

 if (pdata->config.flags & SMSC911X_USE_16BIT) {
  while (wordcount--)
   smsc911x_reg_write(pdata, TX_DATA_FIFO, *buf++);
  return;
 }

 BUG();
}
