
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_valid_cs(unsigned int cs)
{
 if (cs > 6)
  return 0;
 return 1;
}
