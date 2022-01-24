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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct ipz_adapter_handle {int /*<<< orphan*/  handle; } ;
struct hipz_query_port {int dummy; } ;

/* Variables and functions */
 int EHCA_PAGESIZE ; 
 int H_PARAMETER ; 
 int /*<<< orphan*/  H_QUERY_PORT ; 
 int ehca_debug_level ; 
 int /*<<< orphan*/  FUNC0 (struct hipz_query_port*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hipz_query_port*) ; 

u64 FUNC4(const struct ipz_adapter_handle adapter_handle,
		      const u8 port_id,
		      struct hipz_query_port *query_port_response_block)
{
	u64 ret;
	u64 r_cb = FUNC3(query_port_response_block);

	if (r_cb & (EHCA_PAGESIZE-1)) {
		FUNC1("response block not page aligned");
		return H_PARAMETER;
	}

	ret = FUNC2(H_QUERY_PORT,
				      adapter_handle.handle, /* r4 */
				      port_id,	             /* r5 */
				      r_cb,	             /* r6 */
				      0, 0, 0, 0);

	if (ehca_debug_level >= 2)
		FUNC0(query_port_response_block, 64, "response_block");

	return ret;
}