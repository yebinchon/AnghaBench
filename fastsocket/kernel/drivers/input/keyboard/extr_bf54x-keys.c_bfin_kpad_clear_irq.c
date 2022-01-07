
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfin_write_KPAD_ROWCOL (int) ;
 int bfin_write_KPAD_STAT (int) ;

__attribute__((used)) static inline void bfin_kpad_clear_irq(void)
{
 bfin_write_KPAD_STAT(0xFFFF);
 bfin_write_KPAD_ROWCOL(0xFFFF);
}
