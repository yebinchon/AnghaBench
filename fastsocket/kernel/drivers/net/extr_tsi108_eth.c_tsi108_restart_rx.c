
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi108_prv_data {int dummy; } ;
struct net_device {int dummy; } ;


 int TSI108_EC_RXCTRL ;
 int TSI108_EC_RXCTRL_GO ;
 int TSI108_EC_RXCTRL_QUEUE0 ;
 int TSI108_EC_RXQ_PTRHIGH ;
 int TSI108_EC_RXQ_PTRHIGH_VALID ;
 int TSI_WRITE (int ,int) ;

__attribute__((used)) static void tsi108_restart_rx(struct tsi108_prv_data * data, struct net_device *dev)
{
 TSI_WRITE(TSI108_EC_RXQ_PTRHIGH,
        TSI108_EC_RXQ_PTRHIGH_VALID);

 TSI_WRITE(TSI108_EC_RXCTRL, TSI108_EC_RXCTRL_GO
        | TSI108_EC_RXCTRL_QUEUE0);
}
