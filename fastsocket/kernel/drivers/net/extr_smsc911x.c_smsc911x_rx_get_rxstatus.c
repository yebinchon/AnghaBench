
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {int dummy; } ;


 int RX_FIFO_INF ;
 unsigned int RX_FIFO_INF_RXSUSED_ ;
 int RX_STATUS_FIFO ;
 unsigned int smsc911x_reg_read (struct smsc911x_data*,int ) ;

__attribute__((used)) static unsigned int smsc911x_rx_get_rxstatus(struct smsc911x_data *pdata)
{
 unsigned int result =
     smsc911x_reg_read(pdata, RX_FIFO_INF) & RX_FIFO_INF_RXSUSED_;

 if (result != 0)
  result = smsc911x_reg_read(pdata, RX_STATUS_FIFO);

 return result;
}
