
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int atomic_flags; } ;


 int REQ_ATOM_COMPLETE ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static inline int blk_mark_rq_complete(struct request *rq)
{
 return test_and_set_bit(REQ_ATOM_COMPLETE, &rq->atomic_flags);
}
