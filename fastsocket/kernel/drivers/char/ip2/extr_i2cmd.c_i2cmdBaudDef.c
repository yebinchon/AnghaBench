
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* cmdSyntaxPtr ;
struct TYPE_3__ {unsigned char* cmd; } ;


 int ct54 ;
 int ct55 ;

__attribute__((used)) static cmdSyntaxPtr
i2cmdBaudDef(int which, unsigned short rate)
{
 cmdSyntaxPtr pCM;

 switch(which)
 {
 case 1:
  pCM = (cmdSyntaxPtr) ct54;
  break;
 default:
 case 2:
  pCM = (cmdSyntaxPtr) ct55;
  break;
 }
 pCM->cmd[1] = (unsigned char) rate;
 pCM->cmd[2] = (unsigned char) (rate >> 8);
 return pCM;
}
