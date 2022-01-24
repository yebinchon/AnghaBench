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
typedef  int /*<<< orphan*/  uint8_t ;
struct intel_dvo_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS2501_FREQ_HI ; 
 int /*<<< orphan*/  NS2501_FREQ_LO ; 
 int /*<<< orphan*/  NS2501_REG8 ; 
 int /*<<< orphan*/  NS2501_REG9 ; 
 int /*<<< orphan*/  NS2501_REGC ; 
 int /*<<< orphan*/  FUNC1 (struct intel_dvo_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct intel_dvo_device *dvo)
{
	uint8_t val;

	FUNC1(dvo, NS2501_FREQ_LO, &val);
	FUNC0("NS2501_FREQ_LO: 0x%02x\n", val);
	FUNC1(dvo, NS2501_FREQ_HI, &val);
	FUNC0("NS2501_FREQ_HI: 0x%02x\n", val);
	FUNC1(dvo, NS2501_REG8, &val);
	FUNC0("NS2501_REG8: 0x%02x\n", val);
	FUNC1(dvo, NS2501_REG9, &val);
	FUNC0("NS2501_REG9: 0x%02x\n", val);
	FUNC1(dvo, NS2501_REGC, &val);
	FUNC0("NS2501_REGC: 0x%02x\n", val);
}