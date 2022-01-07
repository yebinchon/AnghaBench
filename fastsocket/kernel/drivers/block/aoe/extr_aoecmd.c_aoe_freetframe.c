
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int head; scalar_t__ flags; int * r_skb; int * bv; scalar_t__ lba; int * buf; struct aoetgt* t; } ;
struct aoetgt {int ffree; } ;


 int list_add (int *,int *) ;

void
aoe_freetframe(struct frame *f)
{
 struct aoetgt *t;

 t = f->t;
 f->buf = ((void*)0);
 f->lba = 0;
 f->bv = ((void*)0);
 f->r_skb = ((void*)0);
 f->flags = 0;
 list_add(&f->head, &t->ffree);
}
