
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *ti_p(int dev)
{
 switch (dev) {
 case 136:
  return ("A");
 case 137:
  return ("D");
 case 129:
  return ("T");
 case 132:
  return ("P");
 case 128:
  return ("W");
 case 131:
  return ("R");
 case 130:
  return ("S");
 case 134:
  return ("M");
 case 135:
  return ("C");
 case 133:
  return ("+");
 }
 return ("-");
}
