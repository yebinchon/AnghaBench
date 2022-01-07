
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bop_ring_buffer {int begin; struct block_op* bops; } ;
struct block_op {int block; int type; } ;


 int ENODATA ;
 scalar_t__ brb_empty (struct bop_ring_buffer*) ;
 int brb_next (struct bop_ring_buffer*,int) ;

__attribute__((used)) static int brb_pop(struct bop_ring_buffer *brb, struct block_op *result)
{
 struct block_op *bop;

 if (brb_empty(brb))
  return -ENODATA;

 bop = brb->bops + brb->begin;
 result->type = bop->type;
 result->block = bop->block;

 brb->begin = brb_next(brb, brb->begin);

 return 0;
}
