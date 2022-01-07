
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hvcs_index_count ;
 int* hvcs_index_list ;

__attribute__((used)) static void hvcs_return_index(int index)
{

 if (!hvcs_index_list)
  return;
 if (index < 0 || index >= hvcs_index_count)
  return;
 if (hvcs_index_list[index] == -1)
  return;
 else
  hvcs_index_list[index] = -1;
}
