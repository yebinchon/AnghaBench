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
struct sclp_statechangebuf {int mask_length; int /*<<< orphan*/  sclp_active_facility_mask; scalar_t__ validity_sclp_active_facility_mask; int /*<<< orphan*/  sclp_send_mask; scalar_t__ validity_sclp_send_mask; int /*<<< orphan*/  sclp_receive_mask; scalar_t__ validity_sclp_receive_mask; } ;
struct evbuf_header {int dummy; } ;
typedef  int /*<<< orphan*/  sccb_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  sclp_facilities ; 
 int /*<<< orphan*/  sclp_lock ; 
 int /*<<< orphan*/  sclp_receive_mask ; 
 int /*<<< orphan*/  sclp_send_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC3(struct evbuf_header *evbuf)
{
	unsigned long flags;
	struct sclp_statechangebuf *scbuf;

	scbuf = (struct sclp_statechangebuf *) evbuf;
	if (scbuf->mask_length != sizeof(sccb_mask_t))
		return;
	FUNC1(&sclp_lock, flags);
	if (scbuf->validity_sclp_receive_mask)
		sclp_receive_mask = scbuf->sclp_receive_mask;
	if (scbuf->validity_sclp_send_mask)
		sclp_send_mask = scbuf->sclp_send_mask;
	FUNC2(&sclp_lock, flags);
	if (scbuf->validity_sclp_active_facility_mask)
		sclp_facilities = scbuf->sclp_active_facility_mask;
	FUNC0();
}