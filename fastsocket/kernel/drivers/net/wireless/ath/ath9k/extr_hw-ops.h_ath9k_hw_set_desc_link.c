
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath_hw {int dummy; } ;
struct TYPE_2__ {int (* set_desc_link ) (void*,int ) ;} ;


 TYPE_1__* ath9k_hw_ops (struct ath_hw*) ;
 int stub1 (void*,int ) ;

__attribute__((used)) static inline void ath9k_hw_set_desc_link(struct ath_hw *ah, void *ds,
       u32 link)
{
 ath9k_hw_ops(ah)->set_desc_link(ds, link);
}
