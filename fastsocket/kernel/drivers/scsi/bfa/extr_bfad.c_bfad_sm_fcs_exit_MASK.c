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
struct bfad_s {int dummy; } ;
typedef  enum bfad_sm_event { ____Placeholder_bfad_sm_event } bfad_sm_event ;

/* Variables and functions */
#define  BFAD_E_FCS_EXIT_COMP 128 
 int /*<<< orphan*/  FUNC0 (struct bfad_s*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfad_s*,int) ; 
 int /*<<< orphan*/  bfad_sm_stopping ; 
 int /*<<< orphan*/  FUNC3 (struct bfad_s*) ; 

__attribute__((used)) static void
FUNC4(struct bfad_s *bfad, enum bfad_sm_event event)
{
	FUNC2(bfad, event);

	switch (event) {
	case BFAD_E_FCS_EXIT_COMP:
		FUNC1(bfad, bfad_sm_stopping);
		FUNC3(bfad);
		break;

	default:
		FUNC0(bfad, event);
	}
}