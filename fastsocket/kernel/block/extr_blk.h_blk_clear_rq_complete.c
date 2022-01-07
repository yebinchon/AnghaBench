
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int atomic_flags; } ;


 int REQ_ATOM_COMPLETE ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static inline void blk_clear_rq_complete(struct request *rq)
{
 clear_bit(REQ_ATOM_COMPLETE, &rq->atomic_flags);
}
