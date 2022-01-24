#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ath_common {TYPE_1__* bus_ops; } ;
struct ath5k_hw {int dummy; } ;
struct TYPE_2__ {int (* eeprom_read ) (struct ath_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 struct ath_common* FUNC0 (struct ath5k_hw*) ; 
 int FUNC1 (struct ath_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC2(struct ath5k_hw *ah, u32 off, u16 *data)
{
	struct ath_common *common = FUNC0(ah);
	return common->bus_ops->eeprom_read(common, off, data);
}