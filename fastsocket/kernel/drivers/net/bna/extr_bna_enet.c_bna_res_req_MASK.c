#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int num; void* len; void* mem_type; } ;
struct TYPE_4__ {TYPE_1__ mem_info; } ;
struct bna_res_info {TYPE_2__ res_u; void* res_type; } ;
struct bfi_enet_stats {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 void* BNA_DBG_FWTRC_LEN ; 
 void* BNA_MEM_T_DMA ; 
 void* BNA_MEM_T_KVA ; 
 size_t BNA_RES_MEM_T_ATTR ; 
 size_t BNA_RES_MEM_T_COM ; 
 size_t BNA_RES_MEM_T_FWTRC ; 
 size_t BNA_RES_MEM_T_STATS ; 
 void* BNA_RES_T_MEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 

void
FUNC5(struct bna_res_info *res_info)
{
	/* DMA memory for COMMON_MODULE */
	res_info[BNA_RES_MEM_T_COM].res_type = BNA_RES_T_MEM;
	res_info[BNA_RES_MEM_T_COM].res_u.mem_info.mem_type = BNA_MEM_T_DMA;
	res_info[BNA_RES_MEM_T_COM].res_u.mem_info.num = 1;
	res_info[BNA_RES_MEM_T_COM].res_u.mem_info.len = FUNC0(
				(FUNC2() +
				 FUNC3() +
				 FUNC1()), PAGE_SIZE);

	/* DMA memory for retrieving IOC attributes */
	res_info[BNA_RES_MEM_T_ATTR].res_type = BNA_RES_T_MEM;
	res_info[BNA_RES_MEM_T_ATTR].res_u.mem_info.mem_type = BNA_MEM_T_DMA;
	res_info[BNA_RES_MEM_T_ATTR].res_u.mem_info.num = 1;
	res_info[BNA_RES_MEM_T_ATTR].res_u.mem_info.len =
				FUNC0(FUNC4(), PAGE_SIZE);

	/* Virtual memory for retreiving fw_trc */
	res_info[BNA_RES_MEM_T_FWTRC].res_type = BNA_RES_T_MEM;
	res_info[BNA_RES_MEM_T_FWTRC].res_u.mem_info.mem_type = BNA_MEM_T_KVA;
	res_info[BNA_RES_MEM_T_FWTRC].res_u.mem_info.num = 1;
	res_info[BNA_RES_MEM_T_FWTRC].res_u.mem_info.len = BNA_DBG_FWTRC_LEN;

	/* DMA memory for retreiving stats */
	res_info[BNA_RES_MEM_T_STATS].res_type = BNA_RES_T_MEM;
	res_info[BNA_RES_MEM_T_STATS].res_u.mem_info.mem_type = BNA_MEM_T_DMA;
	res_info[BNA_RES_MEM_T_STATS].res_u.mem_info.num = 1;
	res_info[BNA_RES_MEM_T_STATS].res_u.mem_info.len =
				FUNC0(sizeof(struct bfi_enet_stats),
					PAGE_SIZE);
}