
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tid; } ;
struct cryptocop_transform_ctx {struct cryptocop_transform_ctx* next; TYPE_1__ init; } ;
struct cryptocop_session {struct cryptocop_transform_ctx* tfrm_ctx; } ;
typedef scalar_t__ cryptocop_tfrm_id ;


 int DEBUG (int ) ;
 int assert (int ) ;
 int printk (char*,...) ;

__attribute__((used)) static struct cryptocop_transform_ctx *get_transform_ctx(struct cryptocop_session *sess, cryptocop_tfrm_id tid)
{
 struct cryptocop_transform_ctx *tc = sess->tfrm_ctx;

 DEBUG(printk("get_transform_ctx, sess=0x%p, tid=%d\n", sess, tid));
 assert(sess != ((void*)0));
 while (tc && tc->init.tid != tid){
  DEBUG(printk("tc=0x%p, tc->next=0x%p\n", tc, tc->next));
  tc = tc->next;
 }
 DEBUG(printk("get_transform_ctx, returning tc=0x%p\n", tc));
 return tc;
}
