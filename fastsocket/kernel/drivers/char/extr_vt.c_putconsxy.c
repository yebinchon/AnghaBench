
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int gotoxy (struct vc_data*,unsigned char,unsigned char) ;
 int hide_cursor (struct vc_data*) ;
 int set_cursor (struct vc_data*) ;

void putconsxy(struct vc_data *vc, unsigned char *p)
{
 hide_cursor(vc);
 gotoxy(vc, p[0], p[1]);
 set_cursor(vc);
}
