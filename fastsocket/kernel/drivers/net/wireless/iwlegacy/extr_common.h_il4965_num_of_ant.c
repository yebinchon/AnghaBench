
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ANT_A ;
 int ANT_B ;
 int ANT_C ;

__attribute__((used)) static inline u8
il4965_num_of_ant(u8 m)
{
 return !!(m & ANT_A) + !!(m & ANT_B) + !!(m & ANT_C);
}
