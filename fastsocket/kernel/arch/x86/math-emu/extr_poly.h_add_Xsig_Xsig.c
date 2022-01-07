
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Xsig ;



__attribute__((used)) static inline void add_Xsig_Xsig(Xsig *dest, const Xsig *x2)
{
 asm volatile ("movl %1,%%edi; movl %2,%%esi;\n"
        "movl (%%esi),%%eax; addl %%eax,(%%edi);\n"
        "movl 4(%%esi),%%eax; adcl %%eax,4(%%edi);\n"
        "movl 8(%%esi),%%eax; adcl %%eax,8(%%edi);\n":"=g"
        (*dest):"g"(dest), "g"(x2)
        :"ax", "si", "di");
}
