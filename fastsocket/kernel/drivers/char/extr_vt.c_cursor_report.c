
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_y; int vc_top; int vc_x; scalar_t__ vc_decom; } ;
struct tty_struct {int dummy; } ;


 int respond_string (char*,struct tty_struct*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static void cursor_report(struct vc_data *vc, struct tty_struct *tty)
{
 char buf[40];

 sprintf(buf, "\033[%d;%dR", vc->vc_y + (vc->vc_decom ? vc->vc_top + 1 : 1), vc->vc_x + 1);
 respond_string(buf, tty);
}
