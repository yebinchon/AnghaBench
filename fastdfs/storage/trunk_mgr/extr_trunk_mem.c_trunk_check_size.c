
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 scalar_t__ const g_slot_max_size ;

bool trunk_check_size(const int64_t file_size)
{
 return file_size <= g_slot_max_size;
}
