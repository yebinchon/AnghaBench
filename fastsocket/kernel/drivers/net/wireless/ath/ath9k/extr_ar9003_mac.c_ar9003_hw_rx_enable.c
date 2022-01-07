
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_CR ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;

__attribute__((used)) static void ar9003_hw_rx_enable(struct ath_hw *hw)
{
 REG_WRITE(hw, AR_CR, 0);
}
