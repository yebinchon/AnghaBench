
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int devid; } ;
struct ath_hw {TYPE_2__ hw_version; } ;
struct ath_common {TYPE_1__* bus_ops; } ;
struct TYPE_3__ {int ath_bus_type; } ;
 int ATH_USB ;
 int EOPNOTSUPP ;
 int __ath9k_hw_init (struct ath_hw*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_err (struct ath_common*,char*,int) ;

int ath9k_hw_init(struct ath_hw *ah)
{
 int ret;
 struct ath_common *common = ath9k_hw_common(ah);


 switch (ah->hw_version.devid) {
 case 144:
 case 143:
 case 145:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 146:
 case 130:
 case 133:
 case 136:
 case 135:
 case 129:
 case 131:
 case 134:
 case 128:
 case 132:
  break;
 default:
  if (common->bus_ops->ath_bus_type == ATH_USB)
   break;
  ath_err(common, "Hardware device ID 0x%04x not supported\n",
   ah->hw_version.devid);
  return -EOPNOTSUPP;
 }

 ret = __ath9k_hw_init(ah);
 if (ret) {
  ath_err(common,
   "Unable to initialize hardware; initialization status: %d\n",
   ret);
  return ret;
 }

 return 0;
}
