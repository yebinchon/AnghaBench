
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int setting; } ;


 int MAX_NUM_SETTINGS ;
 TYPE_1__* settings ;

__attribute__((used)) static inline int phy_find_valid(int idx, u32 features)
{
 while (idx < MAX_NUM_SETTINGS && !(settings[idx].setting & features))
  idx++;

 return idx < MAX_NUM_SETTINGS ? idx : MAX_NUM_SETTINGS - 1;
}
