
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct isowbuf_t {int dummy; } ;


 int isowbuf_putbits (struct isowbuf_t*,int,int) ;
 int* stufftab ;

__attribute__((used)) static inline int hdlc_bitstuff_byte(struct isowbuf_t *iwb, unsigned char cin,
         int ones)
{
 u16 stuff;
 int shiftinc, newones;






 stuff = stufftab[256 * ones + cin];
 shiftinc = (stuff >> 13) & 3;
 newones = (stuff >> 10) & 7;
 stuff &= 0x3ff;


 isowbuf_putbits(iwb, stuff, 8 + shiftinc);
 return newones;
}
