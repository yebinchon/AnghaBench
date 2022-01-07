
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sk_buff {scalar_t__* data; } ;
struct l3_process {int st; int timer; } ;


 int CONFIRM ;
 int DL_ESTABLISH ;
 scalar_t__ IE_ENDPOINT_ID ;
 int L3DelTimer (int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int l3_msg (int ,int,int *) ;
 int newl3state (struct l3_process*,int ) ;

__attribute__((used)) static void l3ni1_spid_epid( struct l3_process *pc, u_char pr, void *arg )
{
 struct sk_buff *skb = arg;

 if ( skb->data[ 1 ] == 0 )
  if ( skb->data[ 3 ] == IE_ENDPOINT_ID )
  {
   L3DelTimer( &pc->timer );
   newl3state( pc, 0 );
   l3_msg( pc->st, DL_ESTABLISH | CONFIRM, ((void*)0) );
  }
 dev_kfree_skb( skb);
}
