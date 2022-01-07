
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int bsd_compress (void*,struct sk_buff*,int *,int) ;

__attribute__((used)) static void bsd_incomp (void *state, struct sk_buff *skb_in,int proto)
{
 bsd_compress (state, skb_in, ((void*)0), proto);
}
