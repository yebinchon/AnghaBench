
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int RSPEC_SHORT_GI ;

__attribute__((used)) static inline bool plcp3_issgi(u8 plcp)
{
 return (plcp & (RSPEC_SHORT_GI >> 16)) != 0;
}
