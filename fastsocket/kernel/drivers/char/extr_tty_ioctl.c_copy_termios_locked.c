
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int termios_mutex; int termios_locked; } ;
struct ktermios {int dummy; } ;


 int memcpy (struct ktermios*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void copy_termios_locked(struct tty_struct *tty, struct ktermios *kterm)
{
 mutex_lock(&tty->termios_mutex);
 memcpy(kterm, tty->termios_locked, sizeof(struct ktermios));
 mutex_unlock(&tty->termios_mutex);
}
