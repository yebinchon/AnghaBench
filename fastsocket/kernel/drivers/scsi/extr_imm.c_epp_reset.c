
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_str (unsigned short) ;
 int w_str (unsigned short,int) ;

__attribute__((used)) static inline void epp_reset(unsigned short ppb)
{
 int i;

 i = r_str(ppb);
 w_str(ppb, i);
 w_str(ppb, i & 0xfe);
}
