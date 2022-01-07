
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int SIGTERM ;
 int console_loglevel ;
 int send_sig_all (int ) ;

__attribute__((used)) static void sysrq_handle_term(int key, struct tty_struct *tty)
{
 send_sig_all(SIGTERM);
 console_loglevel = 8;
}
