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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,int) ; 

__attribute__((used)) static long
FUNC1 (unsigned long insn,
	     int dialect,
	     int *invalid)
{
  long value;

  value = (insn >> 21) & 0x1f;
  if (!FUNC0 (value, dialect))
    *invalid = 1;
  return value & 0x1e;
}