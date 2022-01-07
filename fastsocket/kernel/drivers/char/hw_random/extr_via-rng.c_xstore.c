
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int irq_ts_restore (int) ;
 int irq_ts_save () ;

__attribute__((used)) static inline u32 xstore(u32 *addr, u32 edx_in)
{
 u32 eax_out;
 int ts_state;

 ts_state = irq_ts_save();

 asm(".byte 0x0F,0xA7,0xC0 /* xstore %%edi (addr=%0) */"
  :"=m"(*addr), "=a"(eax_out)
  :"D"(addr), "d"(edx_in));

 irq_ts_restore(ts_state);
 return eax_out;
}
