
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00_dev {TYPE_1__* hw; int cap_flags; } ;
struct TYPE_2__ {int wiphy; } ;


 int CAPABILITY_HW_BUTTON ;
 scalar_t__ test_bit (int ,int *) ;
 int wiphy_rfkill_stop_polling (int ) ;

__attribute__((used)) static inline void rt2x00rfkill_unregister(struct rt2x00_dev *rt2x00dev)
{
 if (test_bit(CAPABILITY_HW_BUTTON, &rt2x00dev->cap_flags))
  wiphy_rfkill_stop_polling(rt2x00dev->hw->wiphy);
}
