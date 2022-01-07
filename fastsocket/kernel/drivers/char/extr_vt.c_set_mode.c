
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_npar; int* vc_par; int vc_deccolm; int vc_decscnm; int vc_decom; int vc_decawm; int vc_report_mouse; int vc_deccm; int vc_disp_ctrl; int vc_decim; int vc_screenbuf_size; int vc_rows; scalar_t__ vc_ques; } ;


 int clr_kbd (struct vc_data*,int ) ;
 int decarm ;
 int decckm ;
 int deccolm ;
 int gotoxay (struct vc_data*,int ,int ) ;
 int invert_screen (struct vc_data*,int ,int ,int ) ;
 int lnm ;
 int set_kbd (struct vc_data*,int ) ;
 int update_attr (struct vc_data*) ;
 int vc_resize (int,int ) ;

__attribute__((used)) static void set_mode(struct vc_data *vc, int on_off)
{
 int i;

 for (i = 0; i <= vc->vc_npar; i++)
  if (vc->vc_ques) {
   switch(vc->vc_par[i]) {
   case 1:
    if (on_off)
     set_kbd(vc, decckm);
    else
     clr_kbd(vc, decckm);
    break;
   case 3:
    vc->vc_deccolm = on_off;





    break;
   case 5:
    if (vc->vc_decscnm != on_off) {
     vc->vc_decscnm = on_off;
     invert_screen(vc, 0, vc->vc_screenbuf_size, 0);
     update_attr(vc);
    }
    break;
   case 6:
    vc->vc_decom = on_off;
    gotoxay(vc, 0, 0);
    break;
   case 7:
    vc->vc_decawm = on_off;
    break;
   case 8:
    if (on_off)
     set_kbd(vc, decarm);
    else
     clr_kbd(vc, decarm);
    break;
   case 9:
    vc->vc_report_mouse = on_off ? 1 : 0;
    break;
   case 25:
    vc->vc_deccm = on_off;
    break;
   case 1000:
    vc->vc_report_mouse = on_off ? 2 : 0;
    break;
   }
  } else {
   switch(vc->vc_par[i]) {
   case 3:
    vc->vc_disp_ctrl = on_off;
    break;
   case 4:
    vc->vc_decim = on_off;
    break;
   case 20:
    if (on_off)
     set_kbd(vc, lnm);
    else
     clr_kbd(vc, lnm);
    break;
   }
  }
}
