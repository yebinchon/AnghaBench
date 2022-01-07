
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int flat_get_apic_id(unsigned long x)
{
 unsigned int id;

 id = (((x)>>24) & 0xFFu);

 return id;
}
