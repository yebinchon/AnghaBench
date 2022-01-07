
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct elf_note {scalar_t__ n_type; scalar_t__ n_descsz; scalar_t__ n_namesz; } ;
typedef int note ;


 int memcpy (int *,struct elf_note*,int) ;

__attribute__((used)) static void fadump_final_note(u32 *buf)
{
 struct elf_note note;

 note.n_namesz = 0;
 note.n_descsz = 0;
 note.n_type = 0;
 memcpy(buf, &note, sizeof(note));
}
