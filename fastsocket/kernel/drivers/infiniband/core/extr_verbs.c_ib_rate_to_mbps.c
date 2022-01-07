
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_rate { ____Placeholder_ib_rate } ib_rate ;
int ib_rate_to_mbps(enum ib_rate rate)
{
 switch (rate) {
 case 135: return 2500;
 case 130: return 5000;
 case 143: return 10000;
 case 137: return 20000;
 case 133: return 30000;
 case 132: return 40000;
 case 129: return 60000;
 case 128: return 80000;
 case 141: return 120000;
 case 140: return 14062;
 case 131: return 56250;
 case 142: return 112500;
 case 139: return 168750;
 case 136: return 25781;
 case 144: return 103125;
 case 138: return 206250;
 case 134: return 309375;
 default: return -1;
 }
}
