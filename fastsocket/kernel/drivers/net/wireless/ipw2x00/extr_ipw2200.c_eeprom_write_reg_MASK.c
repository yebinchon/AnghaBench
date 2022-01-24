#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ipw_priv {int /*<<< orphan*/  eeprom_delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_MEM_REG_EEPROM_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct ipw_priv *p, u32 data)
{
	FUNC0(p, FW_MEM_REG_EEPROM_ACCESS, data);

	/* the eeprom requires some time to complete the operation */
	FUNC1(p->eeprom_delay);
}