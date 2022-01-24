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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct ipw_priv {int dummy; } ;

/* Variables and functions */
 int EEPROM_BIT_CS ; 
 int EEPROM_BIT_DO ; 
 int EEPROM_BIT_SK ; 
 int /*<<< orphan*/  EEPROM_CMD_READ ; 
 int /*<<< orphan*/  FW_MEM_REG_EEPROM_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*,int) ; 
 int FUNC3 (struct ipw_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC4(struct ipw_priv *priv, u8 addr)
{
	int i;
	u16 r = 0;

	/* Send READ Opcode */
	FUNC1(priv, EEPROM_CMD_READ, addr);

	/* Send dummy bit */
	FUNC2(priv, EEPROM_BIT_CS);

	/* Read the byte off the eeprom one bit at a time */
	for (i = 0; i < 16; i++) {
		u32 data = 0;
		FUNC2(priv, EEPROM_BIT_CS | EEPROM_BIT_SK);
		FUNC2(priv, EEPROM_BIT_CS);
		data = FUNC3(priv, FW_MEM_REG_EEPROM_ACCESS);
		r = (r << 1) | ((data & EEPROM_BIT_DO) ? 1 : 0);
	}

	/* Send another dummy bit */
	FUNC2(priv, 0);
	FUNC0(priv);

	return r;
}