
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct niu {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long tcam_num_entries; } ;


 int tcam_flush (struct niu*,unsigned long) ;

__attribute__((used)) static int tcam_flush_all(struct niu *np)
{
 unsigned long i;

 for (i = 0; i < np->parent->tcam_num_entries; i++) {
  int err = tcam_flush(np, i);
  if (err)
   return err;
 }
 return 0;
}
