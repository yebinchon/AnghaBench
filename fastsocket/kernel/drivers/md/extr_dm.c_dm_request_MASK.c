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
struct request_queue {struct mapped_device* queuedata; } ;
struct mapped_device {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct request_queue*,struct bio*) ; 
 int FUNC1 (struct request_queue*,struct bio*) ; 
 scalar_t__ FUNC2 (struct mapped_device*) ; 

__attribute__((used)) static int FUNC3(struct request_queue *q, struct bio *bio)
{
	struct mapped_device *md = q->queuedata;

	if (FUNC2(md))
		return FUNC1(q, bio);

	return FUNC0(q, bio);
}