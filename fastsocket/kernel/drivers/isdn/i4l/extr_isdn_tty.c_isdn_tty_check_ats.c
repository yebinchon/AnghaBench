
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int xmit_size; } ;
typedef TYPE_1__ modem_info ;
struct TYPE_6__ {int* mdmreg; } ;
typedef TYPE_2__ atemu ;


 int ISDN_PROTO_L2_MAX ;



 int ISDN_SERIAL_XMIT_MAX ;




 size_t REG_SI1 ;

 int VBUFX ;

__attribute__((used)) static int
isdn_tty_check_ats(int mreg, int mval, modem_info * info, atemu * m)
{

 switch (mreg) {
  case 132:
   if (mval > ISDN_PROTO_L2_MAX)
    return 1;
   break;
  case 130:
   if ((mval * 16) > ISDN_SERIAL_XMIT_MAX)
    return 1;




   info->xmit_size = mval * 16;
   switch (m->mdmreg[132]) {
    case 133:
    case 135:
    case 134:
     info->xmit_size /= 10;
   }
   break;
  case 128:
  case 131:
  case 129:

   return 1;
 }
 return 0;
}
