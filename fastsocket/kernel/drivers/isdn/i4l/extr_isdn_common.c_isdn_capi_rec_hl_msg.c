
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Controller; } ;
struct TYPE_6__ {int Command; TYPE_1__ adr; } ;
typedef TYPE_2__ capi_msg ;



 int isdn_dc2minor (int,int) ;
 int isdn_tty_capi_facility (TYPE_2__*) ;

__attribute__((used)) static int
isdn_capi_rec_hl_msg(capi_msg *cm) {

 int di;
 int ch;

 di = (cm->adr.Controller & 0x7f) -1;
 ch = isdn_dc2minor(di, (cm->adr.Controller>>8)& 0x7f);
 switch(cm->Command) {
  case 128:

   return(isdn_tty_capi_facility(cm));
  default:
   return(-1);
 }
}
