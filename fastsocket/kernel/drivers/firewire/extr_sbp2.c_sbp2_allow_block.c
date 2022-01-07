
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp2_logical_unit {TYPE_1__* tgt; } ;
struct TYPE_2__ {int dont_block; } ;



__attribute__((used)) static inline void sbp2_allow_block(struct sbp2_logical_unit *lu)
{







 --lu->tgt->dont_block;
}
