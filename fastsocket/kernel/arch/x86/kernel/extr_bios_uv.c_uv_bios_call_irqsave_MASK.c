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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  s64 ;
typedef  enum uv_bios_cmd { ____Placeholder_uv_bios_cmd } uv_bios_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

s64 FUNC3(enum uv_bios_cmd which, u64 a1, u64 a2, u64 a3,
					u64 a4, u64 a5)
{
	unsigned long bios_flags;
	s64 ret;

	FUNC1(bios_flags);
	ret = FUNC2(which, a1, a2, a3, a4, a5);
	FUNC0(bios_flags);

	return ret;
}