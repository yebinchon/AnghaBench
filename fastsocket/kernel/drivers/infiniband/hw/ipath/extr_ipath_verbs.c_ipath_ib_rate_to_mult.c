
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_rate { ____Placeholder_ib_rate } ib_rate ;







unsigned ipath_ib_rate_to_mult(enum ib_rate rate)
{
 switch (rate) {
 case 129: return 8;
 case 128: return 4;
 case 131: return 2;
 case 130: return 1;
 default: return 0;
 }
}
