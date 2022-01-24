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
struct gds_vector {int length; } ;
struct gds_subvector {int length; } ;
struct evbuf_header {int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,size_t) ; 
 int /*<<< orphan*/  OCF_LENGTH_CPC_NAME ; 
 int /*<<< orphan*/  OCF_LENGTH_HMC_NETWORK ; 
 scalar_t__* cpc_name ; 
 scalar_t__* hmc_network ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,struct gds_vector*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct gds_vector* FUNC4 (struct gds_vector*,void*,int) ; 
 struct gds_vector* FUNC5 (struct gds_vector*,void*,int) ; 
 int /*<<< orphan*/  sclp_ocf_change_work ; 
 int /*<<< orphan*/  sclp_ocf_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct evbuf_header *evbuf)
{
	struct gds_vector *v;
	struct gds_subvector *sv, *netid, *cpc;
	size_t size;

	/* Find the 0x9f00 block. */
	v = FUNC5(evbuf + 1, (void *) evbuf + evbuf->length,
				 0x9f00);
	if (!v)
		return;
	/* Find the 0x9f22 block inside the 0x9f00 block. */
	v = FUNC5(v + 1, (void *) v + v->length, 0x9f22);
	if (!v)
		return;
	/* Find the 0x81 block inside the 0x9f22 block. */
	sv = FUNC4(v + 1, (void *) v + v->length, 0x81);
	if (!sv)
		return;
	/* Find the 0x01 block inside the 0x81 block. */
	netid = FUNC4(sv + 1, (void *) sv + sv->length, 1);
	/* Find the 0x02 block inside the 0x81 block. */
	cpc = FUNC4(sv + 1, (void *) sv + sv->length, 2);
	/* Copy network name and cpc name. */
	FUNC6(&sclp_ocf_lock);
	if (netid) {
		size = FUNC2(OCF_LENGTH_HMC_NETWORK, (size_t) netid->length);
		FUNC1(hmc_network, netid + 1, size);
		FUNC0(hmc_network, size);
		hmc_network[size] = 0;
	}
	if (cpc) {
		size = FUNC2(OCF_LENGTH_CPC_NAME, (size_t) cpc->length);
		FUNC1(cpc_name, cpc + 1, size);
		FUNC0(cpc_name, size);
		cpc_name[size] = 0;
	}
	FUNC7(&sclp_ocf_lock);
	FUNC3(&sclp_ocf_change_work);
}