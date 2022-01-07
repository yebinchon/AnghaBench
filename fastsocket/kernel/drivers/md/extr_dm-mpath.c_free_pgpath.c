
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgpath {int dummy; } ;


 int kfree (struct pgpath*) ;

__attribute__((used)) static void free_pgpath(struct pgpath *pgpath)
{
 kfree(pgpath);
}
