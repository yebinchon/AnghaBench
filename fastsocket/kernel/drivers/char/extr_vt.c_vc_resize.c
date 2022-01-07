
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_tty; } ;


 int vc_do_resize (int ,struct vc_data*,unsigned int,unsigned int) ;

int vc_resize(struct vc_data *vc, unsigned int cols, unsigned int rows)
{
 return vc_do_resize(vc->vc_tty, vc, cols, rows);
}
