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
typedef  int u16 ;
struct ks_net {scalar_t__ enabled; int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS_MARH ; 
 int /*<<< orphan*/  KS_MARL ; 
 int /*<<< orphan*/  KS_MARM ; 
 int /*<<< orphan*/  FUNC0 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC1 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct ks_net *ks, u8 *data)
{
	u16 *pw = (u16 *)data;
	u16 w, u;

	FUNC1(ks);  /* Stop receiving for reconfiguration */

	u = *pw++;
	w = ((u & 0xFF) << 8) | ((u >> 8) & 0xFF);
	FUNC2(ks, KS_MARH, w);

	u = *pw++;
	w = ((u & 0xFF) << 8) | ((u >> 8) & 0xFF);
	FUNC2(ks, KS_MARM, w);

	u = *pw;
	w = ((u & 0xFF) << 8) | ((u >> 8) & 0xFF);
	FUNC2(ks, KS_MARL, w);

	FUNC3(ks->mac_addr, data, 6);

	if (ks->enabled)
		FUNC0(ks);
}