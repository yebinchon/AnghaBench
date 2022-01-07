
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int cap_flags; } ;


 int CAPABILITY_POWER_LIMIT ;
 int min (int,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int rt2800_get_txpower_reg_delta(struct rt2x00_dev *rt2x00dev,
     int power_level, int max_power)
{
 int delta;

 if (test_bit(CAPABILITY_POWER_LIMIT, &rt2x00dev->cap_flags))
  return 0;
 delta = power_level - max_power;
 return min(delta, 0);
}
