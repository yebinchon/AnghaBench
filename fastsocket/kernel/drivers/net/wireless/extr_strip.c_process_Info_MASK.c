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
struct strip {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct strip*) ; 

__attribute__((used)) static void FUNC1(struct strip *strip_info, __u8 * ptr, __u8 * end)
{
	if (ptr + 16 > end)
		FUNC0("Bad Info Msg:", strip_info);
}