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
struct txdb {struct tx_map* start; struct tx_map* end; struct tx_map* wptr; struct tx_map* rptr; } ;
struct tx_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(struct txdb *db, struct tx_map **pptr)
{
	FUNC0(db == NULL || pptr == NULL);	/* sanity */

	FUNC0(*pptr != db->rptr &&	/* expect either read */
		   *pptr != db->wptr);	/* or write pointer */

	FUNC0(*pptr < db->start ||	/* pointer has to be */
		   *pptr >= db->end);	/* in range */

	++*pptr;
	if (FUNC1(*pptr == db->end))
		*pptr = db->start;
}