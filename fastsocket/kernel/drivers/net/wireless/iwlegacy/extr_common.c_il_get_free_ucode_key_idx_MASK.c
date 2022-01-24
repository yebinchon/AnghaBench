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
struct il_priv {int sta_key_max_num; int /*<<< orphan*/  ucode_key_table; } ;

/* Variables and functions */
 int WEP_INVALID_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

int
FUNC1(struct il_priv *il)
{
	int i;

	for (i = 0; i < il->sta_key_max_num; i++)
		if (!FUNC0(i, &il->ucode_key_table))
			return i;

	return WEP_INVALID_OFFSET;
}