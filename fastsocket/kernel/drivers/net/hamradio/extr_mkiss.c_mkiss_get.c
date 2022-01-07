
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct mkiss* disc_data; } ;
struct mkiss {int refcnt; } ;


 int atomic_inc (int *) ;
 int disc_data_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static struct mkiss *mkiss_get(struct tty_struct *tty)
{
 struct mkiss *ax;

 read_lock(&disc_data_lock);
 ax = tty->disc_data;
 if (ax)
  atomic_inc(&ax->refcnt);
 read_unlock(&disc_data_lock);

 return ax;
}
