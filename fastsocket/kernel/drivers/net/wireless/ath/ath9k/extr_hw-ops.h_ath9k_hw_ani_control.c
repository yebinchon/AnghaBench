
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int dummy; } ;
typedef enum ath9k_ani_cmd { ____Placeholder_ath9k_ani_cmd } ath9k_ani_cmd ;
struct TYPE_2__ {int (* ani_control ) (struct ath_hw*,int,int) ;} ;


 TYPE_1__* ath9k_hw_private_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*,int,int) ;

__attribute__((used)) static inline bool ath9k_hw_ani_control(struct ath_hw *ah,
     enum ath9k_ani_cmd cmd, int param)
{
 return ath9k_hw_private_ops(ah)->ani_control(ah, cmd, param);
}
