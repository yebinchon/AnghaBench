
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_rate { ____Placeholder_ib_rate } ib_rate ;


 int IB_RATE_10_GBPS ;
 int IB_RATE_120_GBPS ;
 int IB_RATE_20_GBPS ;
 int IB_RATE_2_5_GBPS ;
 int IB_RATE_30_GBPS ;
 int IB_RATE_40_GBPS ;
 int IB_RATE_5_GBPS ;
 int IB_RATE_60_GBPS ;
 int IB_RATE_80_GBPS ;
 int IB_RATE_PORT_CURRENT ;

enum ib_rate mult_to_ib_rate(int mult)
{
 switch (mult) {
 case 1: return IB_RATE_2_5_GBPS;
 case 2: return IB_RATE_5_GBPS;
 case 4: return IB_RATE_10_GBPS;
 case 8: return IB_RATE_20_GBPS;
 case 12: return IB_RATE_30_GBPS;
 case 16: return IB_RATE_40_GBPS;
 case 24: return IB_RATE_60_GBPS;
 case 32: return IB_RATE_80_GBPS;
 case 48: return IB_RATE_120_GBPS;
 default: return IB_RATE_PORT_CURRENT;
 }
}
