
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ghes {int flags; } ;


 int GHES_EXITING ;
 int ghes_add_timer (struct ghes*) ;
 int ghes_proc (struct ghes*) ;

__attribute__((used)) static void ghes_poll_func(unsigned long data)
{
 struct ghes *ghes = (void *)data;

 ghes_proc(ghes);
 if (!(ghes->flags & GHES_EXITING))
  ghes_add_timer(ghes);
}
