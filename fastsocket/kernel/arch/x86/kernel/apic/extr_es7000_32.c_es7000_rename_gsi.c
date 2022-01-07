
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ES7000_ZORRO ;
 scalar_t__ base ;
 scalar_t__ es7000_plat ;
 scalar_t__* nr_ioapic_registers ;
 int nr_ioapics ;

__attribute__((used)) static int
es7000_rename_gsi(int ioapic, int gsi)
{
 if (es7000_plat == ES7000_ZORRO)
  return gsi;

 if (!base) {
  int i;
  for (i = 0; i < nr_ioapics; i++)
   base += nr_ioapic_registers[i];
 }

 if (!ioapic && (gsi < 16))
  gsi += base;

 return gsi;
}
