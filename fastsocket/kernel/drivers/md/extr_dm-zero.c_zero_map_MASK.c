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
typedef  union map_info {int dummy; } map_info ;
struct dm_target {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int DM_MAPIO_SUBMITTED ; 
 int EIO ; 
#define  READ 130 
#define  READA 129 
#define  WRITE 128 
 int /*<<< orphan*/  FUNC0 (struct bio*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 

__attribute__((used)) static int FUNC3(struct dm_target *ti, struct bio *bio,
		      union map_info *map_context)
{
	switch(FUNC1(bio)) {
	case READ:
		FUNC2(bio);
		break;
	case READA:
		/* readahead of null bytes only wastes buffer cache */
		return -EIO;
	case WRITE:
		/* writes get silently dropped */
		break;
	}

	FUNC0(bio, 0);

	/* accepted bio, don't make new request */
	return DM_MAPIO_SUBMITTED;
}