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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct fchs_s {int dummy; } ;
struct fc_prlo_s {int page_len; int /*<<< orphan*/  payload_len; TYPE_1__* prlo_params; int /*<<< orphan*/  command; } ;
struct TYPE_2__ {scalar_t__ resp_process_assc; scalar_t__ orig_process_assc; scalar_t__ rpa_valid; scalar_t__ opa_valid; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_ELS_PRLO ; 
 int /*<<< orphan*/  FC_TYPE_FCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_prlo_s*,int /*<<< orphan*/ ,int) ; 

u16
FUNC4(struct fchs_s *fchs, u32 d_id, u32 s_id, u16 ox_id,
	      int num_pages)
{
	struct fc_prlo_s *prlo = (struct fc_prlo_s *) (fchs + 1);
	int             page;

	FUNC2(fchs, d_id, s_id, ox_id);
	FUNC3(prlo, 0, (num_pages * 16) + 4);
	prlo->command = FC_ELS_PRLO;
	prlo->page_len = 0x10;
	prlo->payload_len = FUNC1((num_pages * 16) + 4);

	for (page = 0; page < num_pages; page++) {
		prlo->prlo_params[page].type = FC_TYPE_FCP;
		prlo->prlo_params[page].opa_valid = 0;
		prlo->prlo_params[page].rpa_valid = 0;
		prlo->prlo_params[page].orig_process_assc = 0;
		prlo->prlo_params[page].resp_process_assc = 0;
	}

	return FUNC0(prlo->payload_len);
}