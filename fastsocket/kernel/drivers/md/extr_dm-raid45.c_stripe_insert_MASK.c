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
struct stripe_hash {int dummy; } ;
struct stripe {int /*<<< orphan*/  key; scalar_t__ lists; } ;

/* Variables and functions */
 scalar_t__ LIST_HASH ; 
 int /*<<< orphan*/  FUNC0 (struct stripe_hash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct stripe_hash *hash, struct stripe *stripe)
{
	FUNC1(stripe->lists + LIST_HASH, FUNC0(hash, stripe->key));
}