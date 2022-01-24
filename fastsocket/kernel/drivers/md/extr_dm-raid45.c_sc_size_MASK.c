#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stripe_chunk {int dummy; } ;
struct stripe {int dummy; } ;
struct TYPE_4__ {int recovery_stripes; int io_size; scalar_t__ end_jiffies; } ;
struct TYPE_6__ {int io_size; int raid_devs; } ;
struct TYPE_5__ {int /*<<< orphan*/  stripes; } ;
struct raid_set {TYPE_1__ recover; TYPE_3__ set; TYPE_2__ sc; } ;
struct page_list {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static unsigned FUNC3(struct raid_set *rs)
{
	return FUNC2(FUNC0(&rs->sc.stripes) *
			 (sizeof(struct stripe) +
			  (sizeof(struct stripe_chunk) +
			   (sizeof(struct page_list) +
			    FUNC1(rs->set.io_size) *
			    rs->set.raid_devs)) +
			  (rs->recover.end_jiffies ?
			   0 : rs->recover.recovery_stripes *
			   FUNC1(rs->set.raid_devs * rs->recover.io_size))));
}