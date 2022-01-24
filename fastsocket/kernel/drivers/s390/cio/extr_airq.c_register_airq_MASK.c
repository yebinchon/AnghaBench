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
typedef  size_t u8 ;
struct airq_t {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int NR_AIRQS ; 
 int /*<<< orphan*/ ** airqs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct airq_t*) ; 

__attribute__((used)) static int FUNC1(struct airq_t *airq, u8 isc)
{
	int i;

	for (i = 0; i < NR_AIRQS; i++)
		if (!FUNC0(&airqs[isc][i], NULL, airq))
			return i;
	return -ENOMEM;
}