
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct syncppp* disc_data; } ;
struct syncppp {int refcnt; } ;


 int atomic_inc (int *) ;
 int disc_data_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static struct syncppp *sp_get(struct tty_struct *tty)
{
 struct syncppp *ap;

 read_lock(&disc_data_lock);
 ap = tty->disc_data;
 if (ap != ((void*)0))
  atomic_inc(&ap->refcnt);
 read_unlock(&disc_data_lock);
 return ap;
}
