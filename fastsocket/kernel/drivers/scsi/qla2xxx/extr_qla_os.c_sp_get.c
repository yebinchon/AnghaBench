
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srb {int ref_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void
sp_get(struct srb *sp)
{
 atomic_inc(&sp->ref_count);
}
