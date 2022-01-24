#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ahash_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  finup; } ;

/* Variables and functions */
 int FUNC0 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct ahash_request*) ; 

int FUNC2(struct ahash_request *req)
{
	return FUNC0(req, FUNC1(req)->finup);
}