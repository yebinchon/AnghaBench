
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* mdmreg; } ;
struct TYPE_6__ {TYPE_1__ emu; } ;
typedef TYPE_2__ modem_info ;


 int isdn_tty_at_cout (char*,TYPE_2__*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void
isdn_tty_show_profile(int ridx, modem_info * info)
{
 char v[6];

 sprintf(v, "\r\n%d", info->emu.mdmreg[ridx]);
 isdn_tty_at_cout(v, info);
}
