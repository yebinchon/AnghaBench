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
struct request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*,int) ; 
 scalar_t__ FUNC1 (struct request*,int,unsigned int,unsigned int) ; 

__attribute__((used)) static bool FUNC2(struct request *rq, int error,
				   unsigned int nr_bytes, unsigned int bidi_bytes)
{
	if (FUNC1(rq, error, nr_bytes, bidi_bytes))
		return true;

	FUNC0(rq, error);

	return false;
}