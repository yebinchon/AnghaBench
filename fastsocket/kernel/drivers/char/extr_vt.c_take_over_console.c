
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consw {int dummy; } ;


 int EBUSY ;
 int bind_con_driver (struct consw const*,int,int,int) ;
 int register_con_driver (struct consw const*,int,int) ;

int take_over_console(const struct consw *csw, int first, int last, int deflt)
{
 int err;

 err = register_con_driver(csw, first, last);




 if (err == -EBUSY)
  err = 0;
 if (!err)
  bind_con_driver(csw, first, last, deflt);

 return err;
}
