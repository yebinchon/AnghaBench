
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {char* data; int len; } ;


 int isprint (char) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static char *next_string(struct sk_buff *skb)
{
 int i = 0;
 char *this = skb->data;

 for (i = 0; i < skb->len; i++) {
  if (this[i] == '\n') {
   this[i] = 0;
   skb_pull(skb, i + 1);
   return this;
  }
  if (!isprint(this[i]))
   return ((void*)0);
 }
 return ((void*)0);
}
