
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int cmd_flags; int extra_len; int ioprio; int nr_phys_segments; int __data_len; int __sector; int cmd_type; int cpu; } ;


 int REQ_CLONE_MASK ;
 int REQ_NOMERGE ;
 int blk_rq_bytes (struct request*) ;
 int blk_rq_pos (struct request*) ;

__attribute__((used)) static void __blk_rq_prep_clone(struct request *dst, struct request *src)
{
 dst->cpu = src->cpu;
 dst->cmd_flags = (src->cmd_flags & REQ_CLONE_MASK) | REQ_NOMERGE;
 dst->cmd_type = src->cmd_type;
 dst->__sector = blk_rq_pos(src);
 dst->__data_len = blk_rq_bytes(src);
 dst->nr_phys_segments = src->nr_phys_segments;
 dst->ioprio = src->ioprio;
 dst->extra_len = src->extra_len;
}
