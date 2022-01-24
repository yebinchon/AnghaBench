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
typedef  int uint32_t ;
struct qla_hw_data {int fw_memory_size; } ;

/* Variables and functions */
 int QLA_SUCCESS ; 
 int FUNC0 (struct qla_hw_data*,int,void*,int,void**) ; 

__attribute__((used)) static int
FUNC1(struct qla_hw_data *ha, uint32_t *code_ram,
    uint32_t cram_size, void **nxt)
{
	int rval;

	/* Code RAM. */
	rval = FUNC0(ha, 0x20000, code_ram, cram_size / 4, nxt);
	if (rval != QLA_SUCCESS)
		return rval;

	/* External Memory. */
	return FUNC0(ha, 0x100000, *nxt,
	    ha->fw_memory_size - 0x100000 + 1, nxt);
}