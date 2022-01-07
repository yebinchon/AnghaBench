
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_rate { ____Placeholder_ib_rate } ib_rate ;


 int IB_RATE_10_GBPS ;
 int IB_RATE_20_GBPS ;
 int IB_RATE_2_5_GBPS ;
 int IB_RATE_5_GBPS ;
 int IB_RATE_PORT_CURRENT ;

__attribute__((used)) static enum ib_rate ipath_mult_to_ib_rate(unsigned mult)
{
 switch (mult) {
 case 8: return IB_RATE_2_5_GBPS;
 case 4: return IB_RATE_5_GBPS;
 case 2: return IB_RATE_10_GBPS;
 case 1: return IB_RATE_20_GBPS;
 default: return IB_RATE_PORT_CURRENT;
 }
}
