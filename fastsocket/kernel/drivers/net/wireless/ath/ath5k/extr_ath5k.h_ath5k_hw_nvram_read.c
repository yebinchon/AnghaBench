
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ath_common {TYPE_1__* bus_ops; } ;
struct ath5k_hw {int dummy; } ;
struct TYPE_2__ {int (* eeprom_read ) (struct ath_common*,int ,int *) ;} ;


 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;
 int stub1 (struct ath_common*,int ,int *) ;

__attribute__((used)) static inline bool ath5k_hw_nvram_read(struct ath5k_hw *ah, u32 off, u16 *data)
{
 struct ath_common *common = ath5k_hw_common(ah);
 return common->bus_ops->eeprom_read(common, off, data);
}
