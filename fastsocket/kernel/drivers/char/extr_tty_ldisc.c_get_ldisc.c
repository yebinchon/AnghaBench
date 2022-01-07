
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_ldisc {int users; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline struct tty_ldisc *get_ldisc(struct tty_ldisc *ld)
{
 if (ld)
  atomic_inc(&ld->users);
 return ld;
}
