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
struct request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*,int,int) ; 

__attribute__((used)) static void FUNC1(struct request *req, int error,
		int num_sectors)
{
	FUNC0(req, error, num_sectors << 9);
}