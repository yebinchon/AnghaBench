
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int valid_bo (long,int) ;

__attribute__((used)) static long
extract_boe (unsigned long insn,
      int dialect,
      int *invalid)
{
  long value;

  value = (insn >> 21) & 0x1f;
  if (!valid_bo (value, dialect))
    *invalid = 1;
  return value & 0x1e;
}
