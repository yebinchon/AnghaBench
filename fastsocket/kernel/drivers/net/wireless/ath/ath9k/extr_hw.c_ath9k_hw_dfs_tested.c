
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int macVersion; } ;
struct ath_hw {TYPE_1__ hw_version; } ;





__attribute__((used)) static bool ath9k_hw_dfs_tested(struct ath_hw *ah)
{

 switch (ah->hw_version.macVersion) {

 case 129:

 case 128:
  return 1;
 default:
  return 0;
 }
}
