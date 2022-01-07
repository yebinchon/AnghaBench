
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91_ST_CRTR ;
 unsigned long at91_sys_read (int ) ;

__attribute__((used)) static inline unsigned long read_CRTR(void)
{
 unsigned long x1, x2;

 x1 = at91_sys_read(AT91_ST_CRTR);
 do {
  x2 = at91_sys_read(AT91_ST_CRTR);
  if (x1 == x2)
   break;
  x1 = x2;
 } while (1);
 return x1;
}
