
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct af9015_rc_setup {char* rc_codes; unsigned int id; } ;



__attribute__((used)) static char *af9015_rc_setup_match(unsigned int id,
 const struct af9015_rc_setup *table)
{
 for (; table->rc_codes; table++)
  if (table->id == id)
   return table->rc_codes;
 return ((void*)0);
}
