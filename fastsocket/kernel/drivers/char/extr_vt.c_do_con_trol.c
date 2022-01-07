
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_pos; int vc_x; int* vc_tab_stop; int vc_charset; int vc_disp_ctrl; int vc_state; size_t vc_npar; int* vc_par; int* vc_palette; int vc_ques; int vc_cursor_type; int vc_complement_mask; int vc_s_complement_mask; int vc_y; int vc_rows; int vc_bottom; int vc_utf; int vc_video_erase_char; int vc_screenbuf_size; void* vc_G1_charset; void* vc_translate; void* vc_G0_charset; int vc_origin; int vc_top; scalar_t__ vc_num; int vc_cols; int vc_bell_duration; int vc_bell_pitch; } ;
struct tty_struct {int dummy; } ;


 int CUR_DEFAULT ;






 void* ESnormal ;





 void* GRAF_MAP ;
 void* IBMPC_MAP ;
 void* LAT1_MAP ;
 size_t NPAR ;
 void* USER_MAP ;
 int bs (struct vc_data*) ;
 int clear_selection () ;
 int clr_kbd (struct vc_data*,int ) ;
 int cr (struct vc_data*) ;
 int csi_J (struct vc_data*,int) ;
 int csi_K (struct vc_data*,int) ;
 int csi_L (struct vc_data*,int) ;
 int csi_M (struct vc_data*,int) ;
 int csi_P (struct vc_data*,int) ;
 int csi_X (struct vc_data*,int) ;
 int csi_at (struct vc_data*,int) ;
 int csi_m (struct vc_data*) ;
 int cursor_report (struct vc_data*,struct tty_struct*) ;
 int del (struct vc_data*) ;
 int do_update_region (struct vc_data*,int ,int) ;
 int gotoxay (struct vc_data*,int,int) ;
 int gotoxy (struct vc_data*,int,int) ;
 int is_kbd (struct vc_data*,int ) ;
 scalar_t__ kbd_table ;
 int kbdapplic ;
 int kd_mksound (int ,int ) ;
 int lf (struct vc_data*) ;
 int lnm ;
 int notify_write (struct vc_data*,char) ;
 int reset_palette (struct vc_data*) ;
 int reset_terminal (struct vc_data*,int) ;
 int respond_ID (struct tty_struct*) ;
 int restore_cur (struct vc_data*) ;
 int ri (struct vc_data*) ;
 int save_cur (struct vc_data*) ;
 int set_kbd (struct vc_data*,int ) ;
 int set_mode (struct vc_data*,int) ;
 int set_palette (struct vc_data*) ;
 void* set_translate (void*,struct vc_data*) ;
 int setledstate (scalar_t__,int) ;
 int setterm_command (struct vc_data*) ;
 int status_report (struct tty_struct*) ;

__attribute__((used)) static void do_con_trol(struct tty_struct *tty, struct vc_data *vc, int c)
{




 switch (c) {
 case 0:
  return;
 case 7:
  if (vc->vc_bell_duration)
   kd_mksound(vc->vc_bell_pitch, vc->vc_bell_duration);
  return;
 case 8:
  bs(vc);
  return;
 case 9:
  vc->vc_pos -= (vc->vc_x << 1);
  while (vc->vc_x < vc->vc_cols - 1) {
   vc->vc_x++;
   if (vc->vc_tab_stop[vc->vc_x >> 5] & (1 << (vc->vc_x & 31)))
    break;
  }
  vc->vc_pos += (vc->vc_x << 1);
  notify_write(vc, '\t');
  return;
 case 10: case 11: case 12:
  lf(vc);
  if (!is_kbd(vc, lnm))
   return;
 case 13:
  cr(vc);
  return;
 case 14:
  vc->vc_charset = 1;
  vc->vc_translate = set_translate(vc->vc_G1_charset, vc);
  vc->vc_disp_ctrl = 1;
  return;
 case 15:
  vc->vc_charset = 0;
  vc->vc_translate = set_translate(vc->vc_G0_charset, vc);
  vc->vc_disp_ctrl = 0;
  return;
 case 24: case 26:
  vc->vc_state = ESnormal;
  return;
 case 27:
  vc->vc_state = 138;
  return;
 case 127:
  del(vc);
  return;
 case 128+27:
  vc->vc_state = 128;
  return;
 }
 switch(vc->vc_state) {
 case 138:
  vc->vc_state = ESnormal;
  switch (c) {
  case '[':
   vc->vc_state = 128;
   return;
  case ']':
   vc->vc_state = 133;
   return;
  case '%':
   vc->vc_state = 131;
   return;
  case 'E':
   cr(vc);
   lf(vc);
   return;
  case 'M':
   ri(vc);
   return;
  case 'D':
   lf(vc);
   return;
  case 'H':
   vc->vc_tab_stop[vc->vc_x >> 5] |= (1 << (vc->vc_x & 31));
   return;
  case 'Z':
   respond_ID(tty);
   return;
  case '7':
   save_cur(vc);
   return;
  case '8':
   restore_cur(vc);
   return;
  case '(':
   vc->vc_state = 130;
   return;
  case ')':
   vc->vc_state = 129;
   return;
  case '#':
   vc->vc_state = 134;
   return;
  case 'c':
   reset_terminal(vc, 1);
   return;
  case '>':
   clr_kbd(vc, kbdapplic);
   return;
  case '=':
   set_kbd(vc, kbdapplic);
   return;
  }
  return;
 case 133:
  if (c=='P') {
   for (vc->vc_npar = 0; vc->vc_npar < NPAR; vc->vc_npar++)
    vc->vc_par[vc->vc_npar] = 0;
   vc->vc_npar = 0;
   vc->vc_state = 132;
   return;
  } else if (c=='R') {
   reset_palette(vc);
   vc->vc_state = ESnormal;
  } else
   vc->vc_state = ESnormal;
  return;
 case 132:
  if ( (c>='0'&&c<='9') || (c>='A'&&c<='F') || (c>='a'&&c<='f') ) {
   vc->vc_par[vc->vc_npar++] = (c > '9' ? (c & 0xDF) - 'A' + 10 : c - '0');
   if (vc->vc_npar == 7) {
    int i = vc->vc_par[0] * 3, j = 1;
    vc->vc_palette[i] = 16 * vc->vc_par[j++];
    vc->vc_palette[i++] += vc->vc_par[j++];
    vc->vc_palette[i] = 16 * vc->vc_par[j++];
    vc->vc_palette[i++] += vc->vc_par[j++];
    vc->vc_palette[i] = 16 * vc->vc_par[j++];
    vc->vc_palette[i] += vc->vc_par[j];
    set_palette(vc);
    vc->vc_state = ESnormal;
   }
  } else
   vc->vc_state = ESnormal;
  return;
 case 128:
  for (vc->vc_npar = 0; vc->vc_npar < NPAR; vc->vc_npar++)
   vc->vc_par[vc->vc_npar] = 0;
  vc->vc_npar = 0;
  vc->vc_state = 136;
  if (c == '[') {
   vc->vc_state=137;
   return;
  }
  vc->vc_ques = (c == '?');
  if (vc->vc_ques)
   return;
 case 136:
  if (c == ';' && vc->vc_npar < NPAR - 1) {
   vc->vc_npar++;
   return;
  } else if (c>='0' && c<='9') {
   vc->vc_par[vc->vc_npar] *= 10;
   vc->vc_par[vc->vc_npar] += c - '0';
   return;
  } else
   vc->vc_state = 135;
 case 135:
  vc->vc_state = ESnormal;
  switch(c) {
  case 'h':
   set_mode(vc, 1);
   return;
  case 'l':
   set_mode(vc, 0);
   return;
  case 'c':
   if (vc->vc_ques) {
    if (vc->vc_par[0])
     vc->vc_cursor_type = vc->vc_par[0] | (vc->vc_par[1] << 8) | (vc->vc_par[2] << 16);
    else
     vc->vc_cursor_type = CUR_DEFAULT;
    return;
   }
   break;
  case 'm':
   if (vc->vc_ques) {
    clear_selection();
    if (vc->vc_par[0])
     vc->vc_complement_mask = vc->vc_par[0] << 8 | vc->vc_par[1];
    else
     vc->vc_complement_mask = vc->vc_s_complement_mask;
    return;
   }
   break;
  case 'n':
   if (!vc->vc_ques) {
    if (vc->vc_par[0] == 5)
     status_report(tty);
    else if (vc->vc_par[0] == 6)
     cursor_report(vc, tty);
   }
   return;
  }
  if (vc->vc_ques) {
   vc->vc_ques = 0;
   return;
  }
  switch(c) {
  case 'G': case '`':
   if (vc->vc_par[0])
    vc->vc_par[0]--;
   gotoxy(vc, vc->vc_par[0], vc->vc_y);
   return;
  case 'A':
   if (!vc->vc_par[0])
    vc->vc_par[0]++;
   gotoxy(vc, vc->vc_x, vc->vc_y - vc->vc_par[0]);
   return;
  case 'B': case 'e':
   if (!vc->vc_par[0])
    vc->vc_par[0]++;
   gotoxy(vc, vc->vc_x, vc->vc_y + vc->vc_par[0]);
   return;
  case 'C': case 'a':
   if (!vc->vc_par[0])
    vc->vc_par[0]++;
   gotoxy(vc, vc->vc_x + vc->vc_par[0], vc->vc_y);
   return;
  case 'D':
   if (!vc->vc_par[0])
    vc->vc_par[0]++;
   gotoxy(vc, vc->vc_x - vc->vc_par[0], vc->vc_y);
   return;
  case 'E':
   if (!vc->vc_par[0])
    vc->vc_par[0]++;
   gotoxy(vc, 0, vc->vc_y + vc->vc_par[0]);
   return;
  case 'F':
   if (!vc->vc_par[0])
    vc->vc_par[0]++;
   gotoxy(vc, 0, vc->vc_y - vc->vc_par[0]);
   return;
  case 'd':
   if (vc->vc_par[0])
    vc->vc_par[0]--;
   gotoxay(vc, vc->vc_x ,vc->vc_par[0]);
   return;
  case 'H': case 'f':
   if (vc->vc_par[0])
    vc->vc_par[0]--;
   if (vc->vc_par[1])
    vc->vc_par[1]--;
   gotoxay(vc, vc->vc_par[1], vc->vc_par[0]);
   return;
  case 'J':
   csi_J(vc, vc->vc_par[0]);
   return;
  case 'K':
   csi_K(vc, vc->vc_par[0]);
   return;
  case 'L':
   csi_L(vc, vc->vc_par[0]);
   return;
  case 'M':
   csi_M(vc, vc->vc_par[0]);
   return;
  case 'P':
   csi_P(vc, vc->vc_par[0]);
   return;
  case 'c':
   if (!vc->vc_par[0])
    respond_ID(tty);
   return;
  case 'g':
   if (!vc->vc_par[0])
    vc->vc_tab_stop[vc->vc_x >> 5] &= ~(1 << (vc->vc_x & 31));
   else if (vc->vc_par[0] == 3) {
    vc->vc_tab_stop[0] =
     vc->vc_tab_stop[1] =
     vc->vc_tab_stop[2] =
     vc->vc_tab_stop[3] =
     vc->vc_tab_stop[4] =
     vc->vc_tab_stop[5] =
     vc->vc_tab_stop[6] =
     vc->vc_tab_stop[7] = 0;
   }
   return;
  case 'm':
   csi_m(vc);
   return;
  case 'q':

   if (vc->vc_par[0] < 4)
    setledstate(kbd_table + vc->vc_num,
         (vc->vc_par[0] < 3) ? vc->vc_par[0] : 4);
   return;
  case 'r':
   if (!vc->vc_par[0])
    vc->vc_par[0]++;
   if (!vc->vc_par[1])
    vc->vc_par[1] = vc->vc_rows;

   if (vc->vc_par[0] < vc->vc_par[1] &&
       vc->vc_par[1] <= vc->vc_rows) {
    vc->vc_top = vc->vc_par[0] - 1;
    vc->vc_bottom = vc->vc_par[1];
    gotoxay(vc, 0, 0);
   }
   return;
  case 's':
   save_cur(vc);
   return;
  case 'u':
   restore_cur(vc);
   return;
  case 'X':
   csi_X(vc, vc->vc_par[0]);
   return;
  case '@':
   csi_at(vc, vc->vc_par[0]);
   return;
  case ']':
   setterm_command(vc);
   return;
  }
  return;
 case 131:
  vc->vc_state = ESnormal;
  switch (c) {
  case '@':
   vc->vc_utf = 0;
   return;
  case 'G':
  case '8':
   vc->vc_utf = 1;
   return;
  }
  return;
 case 137:
  vc->vc_state = ESnormal;
  return;
 case 134:
  vc->vc_state = ESnormal;
  if (c == '8') {

   vc->vc_video_erase_char =
    (vc->vc_video_erase_char & 0xff00) | 'E';
   csi_J(vc, 2);
   vc->vc_video_erase_char =
    (vc->vc_video_erase_char & 0xff00) | ' ';
   do_update_region(vc, vc->vc_origin, vc->vc_screenbuf_size / 2);
  }
  return;
 case 130:
  if (c == '0')
   vc->vc_G0_charset = GRAF_MAP;
  else if (c == 'B')
   vc->vc_G0_charset = LAT1_MAP;
  else if (c == 'U')
   vc->vc_G0_charset = IBMPC_MAP;
  else if (c == 'K')
   vc->vc_G0_charset = USER_MAP;
  if (vc->vc_charset == 0)
   vc->vc_translate = set_translate(vc->vc_G0_charset, vc);
  vc->vc_state = ESnormal;
  return;
 case 129:
  if (c == '0')
   vc->vc_G1_charset = GRAF_MAP;
  else if (c == 'B')
   vc->vc_G1_charset = LAT1_MAP;
  else if (c == 'U')
   vc->vc_G1_charset = IBMPC_MAP;
  else if (c == 'K')
   vc->vc_G1_charset = USER_MAP;
  if (vc->vc_charset == 1)
   vc->vc_translate = set_translate(vc->vc_G1_charset, vc);
  vc->vc_state = ESnormal;
  return;
 default:
  vc->vc_state = ESnormal;
 }
}
