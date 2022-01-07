
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {int dummy; } ;


 int TX_FIFO_INF ;
 unsigned int TX_FIFO_INF_TSUSED_ ;
 int TX_STATUS_FIFO ;
 unsigned int smsc911x_reg_read (struct smsc911x_data*,int ) ;

__attribute__((used)) static unsigned int smsc911x_tx_get_txstatus(struct smsc911x_data *pdata)
{
 unsigned int result =
     smsc911x_reg_read(pdata, TX_FIFO_INF) & TX_FIFO_INF_TSUSED_;

 if (result != 0)
  result = smsc911x_reg_read(pdata, TX_STATUS_FIFO);

 return result;
}
