
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int RSPEC_RATE_MASK ;

__attribute__((used)) static inline u8 cck_rspec(u8 cck)
{
 return cck & RSPEC_RATE_MASK;
}
