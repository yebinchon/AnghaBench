
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long ulong ;
struct sk_buff {int dummy; } ;
struct bio_vec {long bv_len; long bv_offset; int bv_page; } ;


 char* page_address (int ) ;
 int skb_copy_bits (struct sk_buff*,int,char*,long) ;

__attribute__((used)) static void
bvcpy(struct bio_vec *bv, ulong off, struct sk_buff *skb, long cnt)
{
 ulong fcnt;
 char *p;
 int soff = 0;
loop:
 fcnt = bv->bv_len - (off - bv->bv_offset);
 if (fcnt > cnt)
  fcnt = cnt;
 p = page_address(bv->bv_page) + off;
 skb_copy_bits(skb, soff, p, fcnt);
 soff += fcnt;
 cnt -= fcnt;
 if (cnt <= 0)
  return;
 bv++;
 off = bv->bv_offset;
 goto loop;
}
