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
struct n2rng {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct n2rng*) ; 
 int FUNC1 (struct n2rng*) ; 

__attribute__((used)) static int FUNC2(struct n2rng *np)
{
	int err = FUNC1(np);

	/* Not in the control domain, that's OK we are only a consumer
	 * of the RNG data, we don't setup and program it.
	 */
	if (err == -EPERM)
		return 0;
	if (err)
		return err;

	FUNC0(np);

	return 0;
}