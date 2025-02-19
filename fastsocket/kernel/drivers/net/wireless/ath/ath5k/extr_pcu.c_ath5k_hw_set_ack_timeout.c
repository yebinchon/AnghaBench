
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int dummy; } ;


 int AR5K_REG_MS (int,int ) ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int ) ;
 int AR5K_TIME_OUT ;
 int AR5K_TIME_OUT_ACK ;
 int EINVAL ;
 unsigned int ath5k_hw_clocktoh (struct ath5k_hw*,int ) ;
 int ath5k_hw_htoclock (struct ath5k_hw*,unsigned int) ;

__attribute__((used)) static int
ath5k_hw_set_ack_timeout(struct ath5k_hw *ah, unsigned int timeout)
{
 if (ath5k_hw_clocktoh(ah, AR5K_REG_MS(0xffffffff, AR5K_TIME_OUT_ACK))
   <= timeout)
  return -EINVAL;

 AR5K_REG_WRITE_BITS(ah, AR5K_TIME_OUT, AR5K_TIME_OUT_ACK,
  ath5k_hw_htoclock(ah, timeout));

 return 0;
}
