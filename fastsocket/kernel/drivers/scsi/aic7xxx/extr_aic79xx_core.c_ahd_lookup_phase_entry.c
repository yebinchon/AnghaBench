
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_phase_table_entry {int phase; } ;


 struct ahd_phase_table_entry* ahd_phase_table ;
 size_t num_phases ;

__attribute__((used)) static const struct ahd_phase_table_entry*
ahd_lookup_phase_entry(int phase)
{
 const struct ahd_phase_table_entry *entry;
 const struct ahd_phase_table_entry *last_entry;





 last_entry = &ahd_phase_table[num_phases];
 for (entry = ahd_phase_table; entry < last_entry; entry++) {
  if (phase == entry->phase)
   break;
 }
 return (entry);
}
