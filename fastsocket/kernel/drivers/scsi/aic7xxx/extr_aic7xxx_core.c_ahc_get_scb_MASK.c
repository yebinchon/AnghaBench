#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scb {int dummy; } ;
struct ahc_softc {TYPE_1__* scb_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  sle; } ;
struct TYPE_3__ {int /*<<< orphan*/  free_scbs; } ;

/* Variables and functions */
 struct scb* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*) ; 
 TYPE_2__ links ; 

struct scb *
FUNC3(struct ahc_softc *ahc)
{
	struct scb *scb;

	if ((scb = FUNC0(&ahc->scb_data->free_scbs)) == NULL) {
		FUNC2(ahc);
		scb = FUNC0(&ahc->scb_data->free_scbs);
		if (scb == NULL)
			return (NULL);
	}
	FUNC1(&ahc->scb_data->free_scbs, links.sle);
	return (scb);
}