
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int algorithm_valid_raid5(int layout)
{
 return (layout >= 0) &&
  (layout <= 5);
}
