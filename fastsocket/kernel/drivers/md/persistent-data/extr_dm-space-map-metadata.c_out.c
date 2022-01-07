
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_metadata {int recursion_count; int uncommitted; } ;
struct block_op {int dummy; } ;


 int DMERR (char*) ;
 int ENOMEM ;
 int brb_empty (int *) ;
 int brb_pop (int *,struct block_op*) ;
 int commit_bop (struct sm_metadata*,struct block_op*) ;

__attribute__((used)) static int out(struct sm_metadata *smm)
{
 int r = 0;




 if (!smm->recursion_count) {
  DMERR("lost track of recursion depth");
  return -ENOMEM;
 }

 if (smm->recursion_count == 1) {
  while (!brb_empty(&smm->uncommitted)) {
   struct block_op bop;

   r = brb_pop(&smm->uncommitted, &bop);
   if (r) {
    DMERR("bug in bop ring buffer");
    break;
   }

   r = commit_bop(smm, &bop);
   if (r)
    break;
  }
 }

 smm->recursion_count--;

 return r;
}
