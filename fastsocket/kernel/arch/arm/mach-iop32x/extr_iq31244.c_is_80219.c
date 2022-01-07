
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read_cpuid_id () ;

__attribute__((used)) static int is_80219(void)
{
 return !!((read_cpuid_id() & 0xffffffe0) == 0x69052e20);
}
