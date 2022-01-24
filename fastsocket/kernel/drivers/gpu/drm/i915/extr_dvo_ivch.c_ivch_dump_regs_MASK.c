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
typedef  int /*<<< orphan*/  uint16_t ;
struct intel_dvo_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VR00 ; 
 int /*<<< orphan*/  VR01 ; 
 int /*<<< orphan*/  VR30 ; 
 int /*<<< orphan*/  VR40 ; 
 int /*<<< orphan*/  VR80 ; 
 int /*<<< orphan*/  VR81 ; 
 int /*<<< orphan*/  VR82 ; 
 int /*<<< orphan*/  VR83 ; 
 int /*<<< orphan*/  VR84 ; 
 int /*<<< orphan*/  VR85 ; 
 int /*<<< orphan*/  VR86 ; 
 int /*<<< orphan*/  VR87 ; 
 int /*<<< orphan*/  VR88 ; 
 int /*<<< orphan*/  VR8E ; 
 int /*<<< orphan*/  VR8F ; 
 int /*<<< orphan*/  FUNC1 (struct intel_dvo_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct intel_dvo_device *dvo)
{
	uint16_t val;

	FUNC1(dvo, VR00, &val);
	FUNC0("VR00: 0x%04x\n", val);
	FUNC1(dvo, VR01, &val);
	FUNC0("VR01: 0x%04x\n", val);
	FUNC1(dvo, VR30, &val);
	FUNC0("VR30: 0x%04x\n", val);
	FUNC1(dvo, VR40, &val);
	FUNC0("VR40: 0x%04x\n", val);

	/* GPIO registers */
	FUNC1(dvo, VR80, &val);
	FUNC0("VR80: 0x%04x\n", val);
	FUNC1(dvo, VR81, &val);
	FUNC0("VR81: 0x%04x\n", val);
	FUNC1(dvo, VR82, &val);
	FUNC0("VR82: 0x%04x\n", val);
	FUNC1(dvo, VR83, &val);
	FUNC0("VR83: 0x%04x\n", val);
	FUNC1(dvo, VR84, &val);
	FUNC0("VR84: 0x%04x\n", val);
	FUNC1(dvo, VR85, &val);
	FUNC0("VR85: 0x%04x\n", val);
	FUNC1(dvo, VR86, &val);
	FUNC0("VR86: 0x%04x\n", val);
	FUNC1(dvo, VR87, &val);
	FUNC0("VR87: 0x%04x\n", val);
	FUNC1(dvo, VR88, &val);
	FUNC0("VR88: 0x%04x\n", val);

	/* Scratch register 0 - AIM Panel type */
	FUNC1(dvo, VR8E, &val);
	FUNC0("VR8E: 0x%04x\n", val);

	/* Scratch register 1 - Status register */
	FUNC1(dvo, VR8F, &val);
	FUNC0("VR8F: 0x%04x\n", val);
}