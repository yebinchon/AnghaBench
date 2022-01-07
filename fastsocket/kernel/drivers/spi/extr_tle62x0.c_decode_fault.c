
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char *decode_fault(unsigned int fault_code)
{
 fault_code &= 3;

 switch (fault_code) {
 case 131:
  return "N";
 case 129:
  return "V";
 case 130:
  return "O";
 case 128:
  return "G";
 }

 return "?";
}
