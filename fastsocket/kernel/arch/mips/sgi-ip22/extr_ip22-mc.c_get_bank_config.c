
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int mconfig1; unsigned int mconfig0; } ;


 TYPE_1__* sgimc ;

__attribute__((used)) static inline unsigned int get_bank_config(int bank)
{
 unsigned int res = bank > 1 ? sgimc->mconfig1 : sgimc->mconfig0;
 return bank % 2 ? res & 0xffff : res >> 16;
}
