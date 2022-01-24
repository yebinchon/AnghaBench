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
struct scatterlist {int dummy; } ;
struct zfcp_gpn_ft {int /*<<< orphan*/  sg_resp; struct scatterlist sg_req; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpn_ft_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zfcp_gpn_ft*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 TYPE_1__ zfcp_data ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct zfcp_gpn_ft *gpn_ft, int buf_num)
{
	struct scatterlist *sg = &gpn_ft->sg_req;

	FUNC1(zfcp_data.gpn_ft_cache, FUNC2(sg));
	FUNC3(gpn_ft->sg_resp, buf_num);

	FUNC0(gpn_ft);
}