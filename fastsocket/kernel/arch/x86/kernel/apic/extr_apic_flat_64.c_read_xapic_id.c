
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_ID ;
 int apic_read (int ) ;
 unsigned int flat_get_apic_id (int ) ;

__attribute__((used)) static unsigned int read_xapic_id(void)
{
 unsigned int id;

 id = flat_get_apic_id(apic_read(APIC_ID));
 return id;
}
