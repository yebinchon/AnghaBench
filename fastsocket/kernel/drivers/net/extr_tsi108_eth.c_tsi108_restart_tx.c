
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi108_prv_data {int dummy; } ;


 int TSI108_EC_TXCTRL ;
 int TSI108_EC_TXCTRL_GO ;
 int TSI108_EC_TXCTRL_IDLEINT ;
 int TSI108_EC_TXCTRL_QUEUE0 ;
 int TSI108_EC_TXQ_PTRHIGH ;
 int TSI108_EC_TXQ_PTRHIGH_VALID ;
 int TSI_WRITE (int ,int) ;

__attribute__((used)) static void tsi108_restart_tx(struct tsi108_prv_data * data)
{
 TSI_WRITE(TSI108_EC_TXQ_PTRHIGH,
        TSI108_EC_TXQ_PTRHIGH_VALID);

 TSI_WRITE(TSI108_EC_TXCTRL, TSI108_EC_TXCTRL_IDLEINT |
        TSI108_EC_TXCTRL_GO | TSI108_EC_TXCTRL_QUEUE0);
}
