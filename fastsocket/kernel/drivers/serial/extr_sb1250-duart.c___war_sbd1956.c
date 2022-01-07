
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbd_port {int dummy; } ;


 int R_DUART_MODE_REG_1 ;
 int R_DUART_MODE_REG_2 ;
 int __read_sbdchn (struct sbd_port*,int ) ;

__attribute__((used)) static void __war_sbd1956(struct sbd_port *sport)
{
 __read_sbdchn(sport, R_DUART_MODE_REG_1);
 __read_sbdchn(sport, R_DUART_MODE_REG_2);
}
