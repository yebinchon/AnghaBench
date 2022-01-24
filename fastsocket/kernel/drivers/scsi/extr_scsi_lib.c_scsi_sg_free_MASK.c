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
struct scsi_host_sg_pool {int /*<<< orphan*/  pool; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*,int /*<<< orphan*/ ) ; 
 struct scsi_host_sg_pool* scsi_sg_pools ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(struct scatterlist *sgl, unsigned int nents)
{
	struct scsi_host_sg_pool *sgp;

	sgp = scsi_sg_pools + FUNC1(nents);
	FUNC0(sgl, sgp->pool);
}