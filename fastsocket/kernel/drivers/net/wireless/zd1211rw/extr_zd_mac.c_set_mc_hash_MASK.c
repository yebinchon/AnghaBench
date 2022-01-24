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
struct zd_mc_hash {int dummy; } ;
struct zd_mac {int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct zd_mc_hash*) ; 
 int /*<<< orphan*/  FUNC1 (struct zd_mc_hash*) ; 

__attribute__((used)) static int FUNC2(struct zd_mac *mac)
{
	struct zd_mc_hash hash;
	FUNC1(&hash);
	return FUNC0(&mac->chip, &hash);
}