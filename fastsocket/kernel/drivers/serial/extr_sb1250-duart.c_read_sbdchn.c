
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbd_port {int dummy; } ;


 scalar_t__ SIBYTE_1956_WAR ;
 unsigned char __read_sbdchn (struct sbd_port*,int) ;
 int __war_sbd1956 (struct sbd_port*) ;

__attribute__((used)) static unsigned char read_sbdchn(struct sbd_port *sport, int reg)
{
 unsigned char retval;

 retval = __read_sbdchn(sport, reg);
 if (SIBYTE_1956_WAR)
  __war_sbd1956(sport);
 return retval;
}
