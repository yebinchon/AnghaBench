
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void __delay(unsigned long loops)
{
 long long dummy;
 __asm__ __volatile__("gettr	tr0, %1\n\t"
        "pta	$+4, tr0\n\t"
        "addi	%0, -1, %0\n\t"
        "bne	%0, r63, tr0\n\t"
        "ptabs	%1, tr0\n\t":"=r"(loops),
        "=r"(dummy)
        :"0"(loops));
}
