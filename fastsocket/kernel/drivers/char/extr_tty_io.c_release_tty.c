
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int index; struct tty_struct* link; } ;


 int WARN_ON (int) ;
 int tty_kref_put (struct tty_struct*) ;

__attribute__((used)) static void release_tty(struct tty_struct *tty, int idx)
{

 WARN_ON(tty->index != idx);

 if (tty->link)
  tty_kref_put(tty->link);
 tty_kref_put(tty);
}
