
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int func_enter () ;
 int func_exit () ;
 int put_tty_driver (int ) ;
 int specialix_driver ;
 int tty_unregister_driver (int ) ;

__attribute__((used)) static void sx_release_drivers(void)
{
 func_enter();

 tty_unregister_driver(specialix_driver);
 put_tty_driver(specialix_driver);
 func_exit();
}
