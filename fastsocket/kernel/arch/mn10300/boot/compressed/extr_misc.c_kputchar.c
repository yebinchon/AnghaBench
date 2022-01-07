
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SC01STR_TBF ;
 int SC0STR ;
 int SC0TXB ;
 int SC1STR ;
 int SC1TXB ;

__attribute__((used)) static inline void kputchar(unsigned char ch)
{
 while (SC1STR & SC01STR_TBF)
  continue;

 if (ch == 0x0a) {
  SC1TXB = 0x0d;
  while (SC1STR & SC01STR_TBF)
   continue;
 }

 SC1TXB = ch;


}
