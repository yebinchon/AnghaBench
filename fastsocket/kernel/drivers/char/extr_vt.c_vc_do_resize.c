
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ws ;
struct winsize {unsigned int ws_row; unsigned int ws_col; int ws_ypixel; } ;
struct vc_data {unsigned int vc_resize_user; unsigned int vc_cols; unsigned int vc_rows; unsigned int vc_size_row; unsigned int vc_screenbuf_size; unsigned long vc_origin; unsigned int vc_y; unsigned int vc_scr_end; unsigned short* vc_screenbuf; unsigned int vc_bottom; int vc_num; int vc_scan_lines; int vc_x; scalar_t__ vc_top; int vc_video_erase_char; } ;
struct tty_struct {int dummy; } ;


 scalar_t__ CON_IS_VISIBLE (struct vc_data*) ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_USER ;
 unsigned int VC_RESIZE_MAXCOL ;
 unsigned int VC_RESIZE_MAXROW ;
 int VT_EVENT_RESIZE ;
 int WARN_CONSOLE_UNLOCKED () ;
 int gotoxy (struct vc_data*,int ,unsigned int) ;
 int kfree (unsigned short*) ;
 unsigned short* kmalloc (unsigned int,int ) ;
 int memset (struct winsize*,int ,int) ;
 unsigned long min (unsigned int,unsigned int) ;
 unsigned long resize_screen (struct vc_data*,unsigned int,unsigned int,unsigned int) ;
 int save_cur (struct vc_data*) ;
 int scr_memcpyw (unsigned short*,unsigned short*,unsigned long) ;
 int scr_memsetw (void*,int ,unsigned long) ;
 int set_origin (struct vc_data*) ;
 int tty_do_resize (struct tty_struct*,struct winsize*) ;
 int update_attr (struct vc_data*) ;
 int update_screen (struct vc_data*) ;
 int vt_event_post (int ,int ,int ) ;

__attribute__((used)) static int vc_do_resize(struct tty_struct *tty, struct vc_data *vc,
    unsigned int cols, unsigned int lines)
{
 unsigned long old_origin, new_origin, new_scr_end, rlth, rrem, err = 0;
 unsigned int old_cols, old_rows, old_row_size, old_screen_size;
 unsigned int new_cols, new_rows, new_row_size, new_screen_size;
 unsigned int end, user;
 unsigned short *newscreen;

 WARN_CONSOLE_UNLOCKED();

 if (!vc)
  return -ENXIO;

 user = vc->vc_resize_user;
 vc->vc_resize_user = 0;

 if (cols > VC_RESIZE_MAXCOL || lines > VC_RESIZE_MAXROW)
  return -EINVAL;

 new_cols = (cols ? cols : vc->vc_cols);
 new_rows = (lines ? lines : vc->vc_rows);
 new_row_size = new_cols << 1;
 new_screen_size = new_row_size * new_rows;

 if (new_cols == vc->vc_cols && new_rows == vc->vc_rows)
  return 0;

 newscreen = kmalloc(new_screen_size, GFP_USER);
 if (!newscreen)
  return -ENOMEM;

 old_rows = vc->vc_rows;
 old_cols = vc->vc_cols;
 old_row_size = vc->vc_size_row;
 old_screen_size = vc->vc_screenbuf_size;

 err = resize_screen(vc, new_cols, new_rows, user);
 if (err) {
  kfree(newscreen);
  return err;
 }

 vc->vc_rows = new_rows;
 vc->vc_cols = new_cols;
 vc->vc_size_row = new_row_size;
 vc->vc_screenbuf_size = new_screen_size;

 rlth = min(old_row_size, new_row_size);
 rrem = new_row_size - rlth;
 old_origin = vc->vc_origin;
 new_origin = (long) newscreen;
 new_scr_end = new_origin + new_screen_size;

 if (vc->vc_y > new_rows) {
  if (old_rows - vc->vc_y < new_rows) {




   old_origin += (old_rows - new_rows) * old_row_size;
   end = vc->vc_scr_end;
  } else {




   old_origin += (vc->vc_y - new_rows/2) * old_row_size;
   end = old_origin + (old_row_size * new_rows);
  }
 } else



  end = (old_rows > new_rows) ? old_origin +
   (old_row_size * new_rows) :
   vc->vc_scr_end;

 update_attr(vc);

 while (old_origin < end) {
  scr_memcpyw((unsigned short *) new_origin,
       (unsigned short *) old_origin, rlth);
  if (rrem)
   scr_memsetw((void *)(new_origin + rlth),
        vc->vc_video_erase_char, rrem);
  old_origin += old_row_size;
  new_origin += new_row_size;
 }
 if (new_scr_end > new_origin)
  scr_memsetw((void *)new_origin, vc->vc_video_erase_char,
       new_scr_end - new_origin);
 kfree(vc->vc_screenbuf);
 vc->vc_screenbuf = newscreen;
 vc->vc_screenbuf_size = new_screen_size;
 set_origin(vc);


 vc->vc_top = 0;
 vc->vc_bottom = vc->vc_rows;
 gotoxy(vc, vc->vc_x, vc->vc_y);
 save_cur(vc);

 if (tty) {


  struct winsize ws;
  memset(&ws, 0, sizeof(ws));
  ws.ws_row = vc->vc_rows;
  ws.ws_col = vc->vc_cols;
  ws.ws_ypixel = vc->vc_scan_lines;
  tty_do_resize(tty, &ws);
 }

 if (CON_IS_VISIBLE(vc))
  update_screen(vc);
 vt_event_post(VT_EVENT_RESIZE, vc->vc_num, vc->vc_num);
 return err;
}
