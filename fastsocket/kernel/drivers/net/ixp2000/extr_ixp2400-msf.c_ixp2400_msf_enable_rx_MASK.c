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
typedef  int u32 ;
struct ixp2400_msf_parameters {int /*<<< orphan*/  rx_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXP2000_MSF_RX_CONTROL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ixp2400_msf_parameters *mp)
{
	u32 value;

	value = FUNC0(IXP2000_MSF_RX_CONTROL) & 0x0fffffff;
	value |= FUNC2(mp->rx_mode) << 28;
	FUNC1(IXP2000_MSF_RX_CONTROL, value);
}