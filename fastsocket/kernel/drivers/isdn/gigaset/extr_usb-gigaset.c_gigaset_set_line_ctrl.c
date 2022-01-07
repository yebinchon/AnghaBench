
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cardstate {int dev; } ;






 unsigned int CSIZE ;
 unsigned int CSTOPB ;
 unsigned int PARENB ;
 unsigned int PARODD ;
 int dev_err (int ,char*) ;
 int set_value (struct cardstate*,int,int) ;

__attribute__((used)) static int gigaset_set_line_ctrl(struct cardstate *cs, unsigned cflag)
{
 u16 val = 0;


 if (cflag & PARENB)
  val |= (cflag & PARODD) ? 0x10 : 0x20;


 switch (cflag & CSIZE) {
 case 131:
  val |= 5 << 8; break;
 case 130:
  val |= 6 << 8; break;
 case 129:
  val |= 7 << 8; break;
 case 128:
  val |= 8 << 8; break;
 default:
  dev_err(cs->dev, "CSIZE was not CS5-CS8, using default of 8\n");
  val |= 8 << 8;
  break;
 }


 if (cflag & CSTOPB) {
  if ((cflag & CSIZE) == 131)
   val |= 1;
  else
   val |= 2;
 }

 return set_value(cs, 3, val);
}
