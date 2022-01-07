
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int* vc_par; int vc_def_color; int vc_attr; int vc_hi_font_mask; int vc_npar; int vc_bell_pitch; int vc_bell_duration; int vc_intensity; void* vc_halfcolor; int vc_can_do_color; int vc_underline; void* vc_ulcolor; } ;


 int DEFAULT_BELL_DURATION ;
 int DEFAULT_BELL_PITCH ;
 int HZ ;
 int blankinterval ;
 void** color_table ;
 int default_attr (struct vc_data*) ;
 int last_console ;
 int poke_blanked_console () ;
 int set_console (int) ;
 int update_attr (struct vc_data*) ;
 int vc_cons_allocated (int) ;
 int vesa_off_interval ;

__attribute__((used)) static void setterm_command(struct vc_data *vc)
{
 switch(vc->vc_par[0]) {
  case 1:
   if (vc->vc_can_do_color &&
     vc->vc_par[1] < 16) {
    vc->vc_ulcolor = color_table[vc->vc_par[1]];
    if (vc->vc_underline)
     update_attr(vc);
   }
   break;
  case 2:
   if (vc->vc_can_do_color &&
     vc->vc_par[1] < 16) {
    vc->vc_halfcolor = color_table[vc->vc_par[1]];
    if (vc->vc_intensity == 0)
     update_attr(vc);
   }
   break;
  case 8:
   vc->vc_def_color = vc->vc_attr;
   if (vc->vc_hi_font_mask == 0x100)
    vc->vc_def_color >>= 1;
   default_attr(vc);
   update_attr(vc);
   break;
  case 9:
   blankinterval = ((vc->vc_par[1] < 60) ? vc->vc_par[1] : 60) * 60;
   poke_blanked_console();
   break;
  case 10:
   if (vc->vc_npar >= 1)
    vc->vc_bell_pitch = vc->vc_par[1];
   else
    vc->vc_bell_pitch = DEFAULT_BELL_PITCH;
   break;
  case 11:
   if (vc->vc_npar >= 1)
    vc->vc_bell_duration = (vc->vc_par[1] < 2000) ?
     vc->vc_par[1] * HZ / 1000 : 0;
   else
    vc->vc_bell_duration = DEFAULT_BELL_DURATION;
   break;
  case 12:
   if (vc->vc_par[1] >= 1 && vc_cons_allocated(vc->vc_par[1] - 1))
    set_console(vc->vc_par[1] - 1);
   break;
  case 13:
   poke_blanked_console();
   break;
  case 14:
   vesa_off_interval = ((vc->vc_par[1] < 60) ? vc->vc_par[1] : 60) * 60 * HZ;
   break;
  case 15:
   set_console(last_console);
   break;
 }
}
