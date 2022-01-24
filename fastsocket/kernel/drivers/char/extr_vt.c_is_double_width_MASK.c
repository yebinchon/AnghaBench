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
typedef  int /*<<< orphan*/  uint32_t ;
struct interval {int member_0; int member_1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct interval const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct interval const*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(uint32_t ucs)
{
	static const struct interval double_width[] = {
		{ 0x1100, 0x115F }, { 0x2329, 0x232A }, { 0x2E80, 0x303E },
		{ 0x3040, 0xA4CF }, { 0xAC00, 0xD7A3 }, { 0xF900, 0xFAFF },
		{ 0xFE10, 0xFE19 }, { 0xFE30, 0xFE6F }, { 0xFF00, 0xFF60 },
		{ 0xFFE0, 0xFFE6 }, { 0x20000, 0x2FFFD }, { 0x30000, 0x3FFFD }
	};
	return FUNC1(ucs, double_width, FUNC0(double_width) - 1);
}