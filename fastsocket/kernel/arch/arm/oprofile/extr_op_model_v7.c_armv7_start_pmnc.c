
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMNC_E ;
 int armv7_pmnc_read () ;
 int armv7_pmnc_write (int) ;

__attribute__((used)) static inline void armv7_start_pmnc(void)
{
 armv7_pmnc_write(armv7_pmnc_read() | PMNC_E);
}
