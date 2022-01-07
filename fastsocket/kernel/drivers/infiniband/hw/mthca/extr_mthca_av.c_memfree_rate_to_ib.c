
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum ib_rate { ____Placeholder_ib_rate } ib_rate ;






 int mult_to_ib_rate (int) ;

__attribute__((used)) static enum ib_rate memfree_rate_to_ib(u8 mthca_rate, u8 port_rate)
{
 switch (mthca_rate) {
 case 131:
  return mult_to_ib_rate(port_rate >> 3);
 case 128:
  return mult_to_ib_rate(port_rate >> 2);
 case 129:
  return mult_to_ib_rate(port_rate >> 1);
 case 130:
 default:
  return mult_to_ib_rate(port_rate);
 }
}
