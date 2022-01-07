
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; unsigned int len; } ;


 int DBG_DATA ;
 int PRINTDB (int ,char*,char*,unsigned int) ;
 int PRINTDE (int ,char*) ;
 int PRINTDM (int ,char*,unsigned char) ;

__attribute__((used)) static inline void dump_skb (char * prefix, unsigned int vc, struct sk_buff * skb) {
  (void) prefix;
  (void) vc;
  (void) skb;

  return;
}
