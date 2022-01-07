
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_rate { ____Placeholder_ib_rate } ib_rate ;
int ib_rate_to_mult(enum ib_rate rate)
{
 switch (rate) {
 case 133: return 1;
 case 130: return 2;
 case 136: return 4;
 case 134: return 8;
 case 132: return 12;
 case 131: return 16;
 case 129: return 24;
 case 128: return 32;
 case 135: return 48;
 default: return -1;
 }
}
