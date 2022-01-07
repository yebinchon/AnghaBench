
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void planetcore_prepare_table(char *table)
{
 do {
  if (*table == '\n')
   *table = 0;

  table++;
 } while (*(table - 1) || *table != '\n');

 *table = 0;
}
