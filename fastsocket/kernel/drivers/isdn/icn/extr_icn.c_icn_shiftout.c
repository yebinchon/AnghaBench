
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_char ;


 int OUTB_P (int,unsigned short) ;

__attribute__((used)) static inline void
icn_shiftout(unsigned short port,
      unsigned long val,
      int firstbit,
      int bitcount)
{

 register u_char s;
 register u_char c;

 for (s = firstbit, c = bitcount; c > 0; s--, c--)
  OUTB_P((u_char) ((val >> s) & 1) ? 0xff : 0, port);
}
