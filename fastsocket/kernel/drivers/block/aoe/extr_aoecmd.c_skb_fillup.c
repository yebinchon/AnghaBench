
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct sk_buff {int dummy; } ;
struct bio_vec {scalar_t__ bv_len; scalar_t__ bv_offset; int bv_page; } ;


 int skb_fill_page_desc (struct sk_buff*,int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
skb_fillup(struct sk_buff *skb, struct bio_vec *bv, ulong off, ulong cnt)
{
 int frag = 0;
 ulong fcnt;
loop:
 fcnt = bv->bv_len - (off - bv->bv_offset);
 if (fcnt > cnt)
  fcnt = cnt;
 skb_fill_page_desc(skb, frag++, bv->bv_page, off, fcnt);
 cnt -= fcnt;
 if (cnt <= 0)
  return;
 bv++;
 off = bv->bv_offset;
 goto loop;
}
