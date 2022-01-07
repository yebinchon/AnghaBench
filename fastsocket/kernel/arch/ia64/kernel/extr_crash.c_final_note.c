
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_note {int dummy; } ;


 int memset (void*,int ,int) ;

__attribute__((used)) static void
final_note(void *buf)
{
 memset(buf, 0, sizeof(struct elf_note));
}
