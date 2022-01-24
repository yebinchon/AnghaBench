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
typedef  int /*<<< orphan*/  u64 ;
struct sn_hwperf_port_info {int /*<<< orphan*/  conn_id; } ;
struct sn_hwperf_object_info {int ports; scalar_t__ id; } ;
typedef  int /*<<< orphan*/  ptdata ;
typedef  scalar_t__ cnodeid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENODATA ; 
 int ENOENT ; 
 int /*<<< orphan*/  SN_HWPERF_ENUM_PORTS ; 
 scalar_t__ FUNC1 (struct sn_hwperf_object_info*) ; 
 scalar_t__ FUNC2 (struct sn_hwperf_object_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sn_hwperf_object_info*) ; 
 scalar_t__ FUNC4 (struct sn_hwperf_object_info*) ; 
 int SN_HWPERF_OP_OK ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sn_hwperf_object_info* FUNC7 (struct sn_hwperf_object_info*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  sn_hwperf_master_nasid ; 
 scalar_t__ FUNC10 (struct sn_hwperf_object_info*) ; 

__attribute__((used)) static int FUNC11(struct sn_hwperf_object_info *objbuf,
	int nobj, cnodeid_t node, cnodeid_t *near_mem_node, cnodeid_t *near_cpu_node)
{
	int e;
	struct sn_hwperf_object_info *nodeobj = NULL;
	struct sn_hwperf_object_info *op;
	struct sn_hwperf_object_info *dest;
	struct sn_hwperf_object_info *router;
	struct sn_hwperf_port_info ptdata[16];
	int sz, i, j;
	cnodeid_t c;
	int found_mem = 0;
	int found_cpu = 0;

	if (!FUNC5(node))
		return -EINVAL;

	if (FUNC8(node)) {
		if (near_cpu_node)
			*near_cpu_node = node;
		found_cpu++;
	}

	if (FUNC9(node)) {
		if (near_mem_node)
			*near_mem_node = node;
		found_mem++;
	}

	if (found_cpu && found_mem)
		return 0; /* trivially successful */

	/* find the argument node object */
	for (i=0, op=objbuf; i < nobj; i++, op++) {
		if (!FUNC3(op) && !FUNC2(op))
			continue;
		if (node == FUNC10(op)) {
			nodeobj = op;
			break;
		}
	}
	if (!nodeobj) {
		e = -ENOENT;
		goto err;
	}

	/* get it's interconnect topology */
	sz = op->ports * sizeof(struct sn_hwperf_port_info);
	FUNC0(sz > sizeof(ptdata));
	e = FUNC6(sn_hwperf_master_nasid,
			      SN_HWPERF_ENUM_PORTS, nodeobj->id, sz,
			      (u64)&ptdata, 0, 0, NULL);
	if (e != SN_HWPERF_OP_OK) {
		e = -EINVAL;
		goto err;
	}

	/* find nearest node with cpus and nearest memory */
	for (router=NULL, j=0; j < op->ports; j++) {
		dest = FUNC7(objbuf, nobj, ptdata[j].conn_id);
		if (dest && FUNC4(dest))
			router = dest;
		if (!dest || FUNC1(dest) ||
		    !FUNC3(dest) || FUNC2(dest)) {
			continue;
		}
		c = FUNC10(dest);
		if (!found_cpu && FUNC8(c)) {
			if (near_cpu_node)
				*near_cpu_node = c;
			found_cpu++;
		}
		if (!found_mem && FUNC9(c)) {
			if (near_mem_node)
				*near_mem_node = c;
			found_mem++;
		}
	}

	if (router && (!found_cpu || !found_mem)) {
		/* search for a node connected to the same router */
		sz = router->ports * sizeof(struct sn_hwperf_port_info);
		FUNC0(sz > sizeof(ptdata));
		e = FUNC6(sn_hwperf_master_nasid,
				      SN_HWPERF_ENUM_PORTS, router->id, sz,
				      (u64)&ptdata, 0, 0, NULL);
		if (e != SN_HWPERF_OP_OK) {
			e = -EINVAL;
			goto err;
		}
		for (j=0; j < router->ports; j++) {
			dest = FUNC7(objbuf, nobj,
				ptdata[j].conn_id);
			if (!dest || dest->id == node ||
			    FUNC1(dest) ||
			    !FUNC3(dest) ||
			    FUNC2(dest)) {
				continue;
			}
			c = FUNC10(dest);
			if (!found_cpu && FUNC8(c)) {
				if (near_cpu_node)
					*near_cpu_node = c;
				found_cpu++;
			}
			if (!found_mem && FUNC9(c)) {
				if (near_mem_node)
					*near_mem_node = c;
				found_mem++;
			}
			if (found_cpu && found_mem)
				break;
		}
	}

	if (!found_cpu || !found_mem) {
		/* resort to _any_ node with CPUs and memory */
		for (i=0, op=objbuf; i < nobj; i++, op++) {
			if (FUNC1(op) ||
			    FUNC2(op) ||
			    !FUNC3(op)) {
				continue;
			}
			c = FUNC10(op);
			if (!found_cpu && FUNC8(c)) {
				if (near_cpu_node)
					*near_cpu_node = c;
				found_cpu++;
			}
			if (!found_mem && FUNC9(c)) {
				if (near_mem_node)
					*near_mem_node = c;
				found_mem++;
			}
			if (found_cpu && found_mem)
				break;
		}
	}

	if (!found_cpu || !found_mem)
		e = -ENODATA;

err:
	return e;
}