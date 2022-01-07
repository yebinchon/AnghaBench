
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int* cmd_table ;

__attribute__((used)) static u32 *ps3av_search_cmd_table(u32 cid, u32 mask)
{
 u32 *table;
 int i;

 table = cmd_table;
 for (i = 0;; table++, i++) {
  if ((*table & mask) == (cid & mask))
   break;
  if (*table == 0)
   return ((void*)0);
 }
 return table;
}
