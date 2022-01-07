
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum ib_rate { ____Placeholder_ib_rate } ib_rate ;


 int IB_RATE_10_GBPS ;
 int IB_RATE_2_5_GBPS ;
 int IB_RATE_5_GBPS ;



 int mult_to_ib_rate (int) ;

__attribute__((used)) static enum ib_rate tavor_rate_to_ib(u8 mthca_rate, u8 port_rate)
{
 switch (mthca_rate) {
 case 130: return IB_RATE_2_5_GBPS;
 case 129: return IB_RATE_5_GBPS;
 case 128: return IB_RATE_10_GBPS;
 default: return mult_to_ib_rate(port_rate);
 }
}
