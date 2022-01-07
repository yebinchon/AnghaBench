
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct entropy_store {int input_rotate; unsigned long add_ptr; int* pool; int lock; TYPE_1__* poolinfo; } ;
typedef int __u8 ;
typedef int __u32 ;
struct TYPE_2__ {int poolwords; unsigned long tap1; unsigned long tap2; unsigned long tap3; unsigned long tap4; unsigned long tap5; } ;


 int rol32 (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mix_pool_bytes_extract(struct entropy_store *r, const void *in,
       int nbytes, __u8 out[64])
{
 static __u32 const twist_table[8] = {
  0x00000000, 0x3b6e20c8, 0x76dc4190, 0x4db26158,
  0xedb88320, 0xd6d6a3e8, 0x9b64c2b0, 0xa00ae278 };
 unsigned long i, j, tap1, tap2, tap3, tap4, tap5;
 int input_rotate;
 int wordmask = r->poolinfo->poolwords - 1;
 const char *bytes = in;
 __u32 w;
 unsigned long flags;


 tap1 = r->poolinfo->tap1;
 tap2 = r->poolinfo->tap2;
 tap3 = r->poolinfo->tap3;
 tap4 = r->poolinfo->tap4;
 tap5 = r->poolinfo->tap5;

 spin_lock_irqsave(&r->lock, flags);
 input_rotate = r->input_rotate;
 i = r->add_ptr;


 while (nbytes--) {
  w = rol32(*bytes++, input_rotate & 31);
  i = (i - 1) & wordmask;


  w ^= r->pool[i];
  w ^= r->pool[(i + tap1) & wordmask];
  w ^= r->pool[(i + tap2) & wordmask];
  w ^= r->pool[(i + tap3) & wordmask];
  w ^= r->pool[(i + tap4) & wordmask];
  w ^= r->pool[(i + tap5) & wordmask];


  r->pool[i] = (w >> 3) ^ twist_table[w & 7];







  input_rotate += i ? 7 : 14;
 }

 r->input_rotate = input_rotate;
 r->add_ptr = i;

 if (out)
  for (j = 0; j < 16; j++)
   ((__u32 *)out)[j] = r->pool[(i - j) & wordmask];

 spin_unlock_irqrestore(&r->lock, flags);
}
