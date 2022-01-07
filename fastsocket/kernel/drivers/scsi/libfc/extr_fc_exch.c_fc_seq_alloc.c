
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fc_seq {int id; scalar_t__ cnt; scalar_t__ ssb_stat; } ;
struct fc_exch {struct fc_seq seq; } ;



__attribute__((used)) static struct fc_seq *fc_seq_alloc(struct fc_exch *ep, u8 seq_id)
{
 struct fc_seq *sp;

 sp = &ep->seq;
 sp->ssb_stat = 0;
 sp->cnt = 0;
 sp->id = seq_id;
 return sp;
}
