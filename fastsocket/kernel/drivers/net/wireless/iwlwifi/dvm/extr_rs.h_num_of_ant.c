
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int mask ;


 int ANT_A ;
 int ANT_B ;
 int ANT_C ;

__attribute__((used)) static inline u8 num_of_ant(u8 mask)
{
 return !!((mask) & ANT_A) +
  !!((mask) & ANT_B) +
  !!((mask) & ANT_C);
}
