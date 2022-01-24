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
struct scsi_target {unsigned int id; scalar_t__ channel; int /*<<< orphan*/  dev; } ;
struct ahc_softc {TYPE_1__* platform_data; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;
struct TYPE_3__ {struct scsi_target** starget; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct scsi_target **
FUNC1(struct scsi_target *starget)
{
	struct	ahc_softc *ahc =
		*((struct ahc_softc **)FUNC0(&starget->dev)->hostdata);
	unsigned int target_offset;

	target_offset = starget->id;
	if (starget->channel != 0)
		target_offset += 8;

	return &ahc->platform_data->starget[target_offset];
}