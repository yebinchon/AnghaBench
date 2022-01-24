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
struct pktcdvd_device {int dummy; } ;
struct packet_stacked_data {int /*<<< orphan*/  bio; struct pktcdvd_device* pd; } ;
struct bio {struct packet_stacked_data* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct packet_stacked_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pktcdvd_device*) ; 
 int /*<<< orphan*/  psd_pool ; 

__attribute__((used)) static void FUNC4(struct bio *bio, int err)
{
	struct packet_stacked_data *psd = bio->bi_private;
	struct pktcdvd_device *pd = psd->pd;

	FUNC1(bio);
	FUNC0(psd->bio, err);
	FUNC2(psd, psd_pool);
	FUNC3(pd);
}