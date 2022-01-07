
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEMCPY_BY_BLOCK_THRESHOLD ;

void *
memcpy(void *pdst, const void *psrc, size_t pn)
{







  register void *return_dst __asm__ ("r10") = pdst;
  register unsigned char *dst __asm__ ("r13") = pdst;
  register unsigned const char *src __asm__ ("r11") = psrc;
  register int n __asm__ ("r12") = pn;




  if (((unsigned long) dst & 3) != 0


      && n >= 3)
  {
    if ((unsigned long) dst & 1)
      {
 n--;
 *dst = *src;
 src++;
 dst++;
      }

    if ((unsigned long) dst & 2)
      {
 n -= 2;
 *(short *) dst = *(short *) src;
 src += 2;
 dst += 2;
      }
  }


  if (n >= MEMCPY_BY_BLOCK_THRESHOLD)
    {




      __asm__ volatile
 ("	 ;; GCC does promise correct register allocations, but let's	\n	 ;; make sure it keeps its promises.				\n	 .ifnc %0-%1-%2,$r13-$r11-$r12					\n	 .error \"GCC reg alloc bug: %0-%1-%4 != $r13-$r12-$r11\"	\n	 .endif								\n									\n	 ;; Save the registers we'll use in the movem process		\n	 ;; on the stack.						\n	 subq	11*4,sp							\n	 movem	r10,[sp]						\n									\n	 ;; Now we've got this:						\n	 ;; r11 - src							\n	 ;; r13 - dst							\n	 ;; r12 - n							\n									\n	 ;; Update n for the first loop.				\n	 subq	 44,r12							\n0:									\n"
"	 movem	[r11+],r10						\n	 subq	44,r12							\n	 bge	 0b							\n	 movem	r10,[r13+]						\n									\n	 ;; Compensate for last loop underflowing n.			\n	 addq	44,r12							\n									\n	 ;; Restore registers from stack.				\n	 movem [sp+],r10"
  : "=r" (dst), "=r" (src), "=r" (n)


  : "0" (dst), "1" (src), "2" (n));
    }

  while (n >= 16)
    {
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(long *) dst = *(long *) src; dst += 4; src += 4;

      n -= 16;
    }

  switch (n)
    {
    case 0:
      break;

    case 1:
      *dst = *src;
      break;

    case 2:
      *(short *) dst = *(short *) src;
      break;

    case 3:
      *(short *) dst = *(short *) src; dst += 2; src += 2;
      *dst = *src;
      break;

    case 4:
      *(long *) dst = *(long *) src;
      break;

    case 5:
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *dst = *src;
      break;

    case 6:
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(short *) dst = *(short *) src;
      break;

    case 7:
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(short *) dst = *(short *) src; dst += 2; src += 2;
      *dst = *src;
      break;

    case 8:
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(long *) dst = *(long *) src;
      break;

    case 9:
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *dst = *src;
      break;

    case 10:
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(short *) dst = *(short *) src;
      break;

    case 11:
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(short *) dst = *(short *) src; dst += 2; src += 2;
      *dst = *src;
      break;

    case 12:
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(long *) dst = *(long *) src;
      break;

    case 13:
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *dst = *src;
      break;

    case 14:
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(short *) dst = *(short *) src;
      break;

    case 15:
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(long *) dst = *(long *) src; dst += 4; src += 4;
      *(short *) dst = *(short *) src; dst += 2; src += 2;
      *dst = *src;
      break;
    }

  return return_dst;
}
