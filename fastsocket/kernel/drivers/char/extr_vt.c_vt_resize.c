
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_row; int ws_col; } ;
struct vc_data {int dummy; } ;
struct tty_struct {struct vc_data* driver_data; } ;


 int acquire_console_sem () ;
 int release_console_sem () ;
 int vc_do_resize (struct tty_struct*,struct vc_data*,int ,int ) ;

__attribute__((used)) static int vt_resize(struct tty_struct *tty, struct winsize *ws)
{
 struct vc_data *vc = tty->driver_data;
 int ret;

 acquire_console_sem();
 ret = vc_do_resize(tty, vc, ws->ws_col, ws->ws_row);
 release_console_sem();
 return ret;
}
