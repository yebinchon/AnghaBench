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
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int ADM8211_SRAM_SIZE ; 
 int /*<<< orphan*/  WEPCTL ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *dev)
{
	struct adm8211_priv *priv = dev->priv;
	u32 reg = FUNC0(WEPCTL);
	unsigned int addr;

	for (addr = 0; addr < ADM8211_SRAM_SIZE; addr++)
		FUNC2(dev, addr, 0);

	FUNC1(WEPCTL, reg);
}