#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int unit; TYPE_1__* proto; } ;
struct TYPE_11__ {int max_units; int (* test_port ) (TYPE_2__*) ;int max_mode; scalar_t__ (* probe_unit ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(PIA * pi, int unit, char *scratch, int verbose)
{
	int max, s, e;

	s = unit;
	e = s + 1;

	if (s == -1) {
		s = 0;
		e = pi->proto->max_units;
	}

	if (!FUNC2(pi, verbose))
		return 0;

	if (pi->proto->test_port) {
		FUNC0(pi);
		max = pi->proto->test_port(pi);
		FUNC3(pi);
	} else
		max = pi->proto->max_mode;

	if (pi->proto->probe_unit) {
		FUNC0(pi);
		for (pi->unit = s; pi->unit < e; pi->unit++)
			if (pi->proto->probe_unit(pi)) {
				FUNC3(pi);
				if (FUNC1(pi, max, scratch, verbose))
					return 1;
				FUNC4(pi);
				return 0;
			}
		FUNC3(pi);
		FUNC4(pi);
		return 0;
	}

	if (!FUNC1(pi, max, scratch, verbose)) {
		FUNC4(pi);
		return 0;
	}
	return 1;

}