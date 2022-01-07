
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int burst_convert_arg(unsigned int convert_arg, int round_mode)
{
 unsigned int micro_sec;


 if (convert_arg > 64000)
  convert_arg = 64000;


 switch (round_mode) {
 case 129:
 default:
  micro_sec = (convert_arg + 500) / 1000;
  break;
 case 130:
  micro_sec = convert_arg / 1000;
  break;
 case 128:
  micro_sec = (convert_arg - 1) / 1000 + 1;
  break;
 }


 return micro_sec * 1000;
}
