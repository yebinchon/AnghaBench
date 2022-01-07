
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ghes {int estatus; int generic; } ;


 int ghes_clear_estatus (struct ghes*) ;
 int ghes_do_proc (int ) ;
 int ghes_estatus_cache_add (int ,int ) ;
 int ghes_estatus_cached (int ) ;
 scalar_t__ ghes_print_estatus (int *,int ,int ) ;
 int ghes_read_estatus (struct ghes*,int ) ;

__attribute__((used)) static int ghes_proc(struct ghes *ghes)
{
 int rc;

 rc = ghes_read_estatus(ghes, 0);
 if (rc)
  goto out;
 if (!ghes_estatus_cached(ghes->estatus)) {
  if (ghes_print_estatus(((void*)0), ghes->generic, ghes->estatus))
   ghes_estatus_cache_add(ghes->generic, ghes->estatus);
 }
 ghes_do_proc(ghes->estatus);
out:
 ghes_clear_estatus(ghes);
 return 0;
}
