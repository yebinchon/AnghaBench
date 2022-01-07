
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_PUT_TERM_CHAR ;
 long plpar_hcall_norets (int ,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static inline long plpar_put_term_char(unsigned long termno, unsigned long len,
  const char *buffer)
{
 unsigned long *lbuf = (unsigned long *)buffer;
 return plpar_hcall_norets(H_PUT_TERM_CHAR, termno, len, lbuf[0],
   lbuf[1]);
}
