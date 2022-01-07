
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct inbuf_t {int inputstate; struct bc_state* bcs; struct cardstate* cs; } ;
struct cardstate {int dev; scalar_t__ dle; } ;
struct bc_state {int inputstate; int ignore; struct sk_buff* skb; } ;


 unsigned char DLE_FLAG ;
 scalar_t__ HW_HDR_LEN ;
 int INS_DLE_char ;
 int INS_DLE_command ;
 int INS_have_data ;
 int INS_skip_frame ;
 scalar_t__ SBUFSIZE ;
 int * __skb_put (struct sk_buff*,int) ;
 int bitrev8 (unsigned char) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dev_warn (int ,char*) ;
 int gigaset_rcv_skb (struct sk_buff*,struct cardstate*,struct bc_state*) ;
 scalar_t__ likely (int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int iraw_loop(unsigned char c, unsigned char *src, int numbytes,
       struct inbuf_t *inbuf)
{
 struct cardstate *cs = inbuf->cs;
 struct bc_state *bcs = inbuf->bcs;
 int inputstate = bcs->inputstate;
 struct sk_buff *skb = bcs->skb;
 int startbytes = numbytes;

 for (;;) {

  inputstate |= INS_have_data;

  if (likely(!(inputstate & INS_skip_frame))) {
   if (unlikely(skb->len == SBUFSIZE)) {

    dev_warn(cs->dev, "received packet too long\n");
    dev_kfree_skb_any(skb);
    skb = ((void*)0);
    inputstate |= INS_skip_frame;
    break;
   }
   *__skb_put(skb, 1) = bitrev8(c);
  }

  if (unlikely(!numbytes))
   break;
  c = *src++;
  --numbytes;
  if (unlikely(c == DLE_FLAG &&
        (cs->dle ||
         inbuf->inputstate & INS_DLE_command))) {
   inbuf->inputstate |= INS_DLE_char;
   break;
  }
 }


 if (likely(inputstate & INS_have_data)) {
  if (likely(!(inputstate & INS_skip_frame))) {
   gigaset_rcv_skb(skb, cs, bcs);
  }
  inputstate &= ~(INS_have_data | INS_skip_frame);
  if (unlikely(bcs->ignore)) {
   inputstate |= INS_skip_frame;
   skb = ((void*)0);
  } else if (likely((skb = dev_alloc_skb(SBUFSIZE + HW_HDR_LEN))
      != ((void*)0))) {
   skb_reserve(skb, HW_HDR_LEN);
  } else {
   dev_warn(cs->dev, "could not allocate new skb\n");
   inputstate |= INS_skip_frame;
  }
 }

 bcs->inputstate = inputstate;
 bcs->skb = skb;
 return startbytes - numbytes;
}
