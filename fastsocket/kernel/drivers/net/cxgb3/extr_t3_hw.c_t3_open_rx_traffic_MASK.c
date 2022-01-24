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
struct cmac {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_XGM_RX_CFG ; 
 int /*<<< orphan*/  A_XGM_RX_HASH_HIGH ; 
 int /*<<< orphan*/  A_XGM_RX_HASH_LOW ; 
 int F_COPYALLFRAMES ; 
 int F_DISBCAST ; 
 int F_ENHASHMCAST ; 
 int /*<<< orphan*/  FUNC0 (struct cmac*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cmac *mac, u32 rx_cfg,
			       u32 rx_hash_high, u32 rx_hash_low)
{
	FUNC0(mac);
	FUNC1(mac->adapter, A_XGM_RX_CFG,
			 F_ENHASHMCAST | F_DISBCAST | F_COPYALLFRAMES,
			 rx_cfg);
	FUNC2(mac->adapter, A_XGM_RX_HASH_HIGH, rx_hash_high);
	FUNC2(mac->adapter, A_XGM_RX_HASH_LOW, rx_hash_low);
}