
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static bool ar9300_check_header(void *data)
{
 u32 *word = data;
 return !(*word == 0 || *word == ~0);
}
