
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;
typedef enum b43_txpwr_result { ____Placeholder_b43_txpwr_result } b43_txpwr_result ;


 int B43_TXPWR_RES_DONE ;

__attribute__((used)) static enum b43_txpwr_result b43_aphy_op_recalc_txpower(struct b43_wldev *dev,
       bool ignore_tssi)
{
 return B43_TXPWR_RES_DONE;
}
