#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct asd_seq_data {int num_edbs; TYPE_1__** edb_arr; } ;
struct asd_ha_struct {struct asd_seq_data seq; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_5__ {int /*<<< orphan*/  vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  ASD_EDB_SIZE ; 
 int ENOMEM ; 
 TYPE_1__* FUNC1 (struct asd_ha_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct asd_ha_struct*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 TYPE_1__** FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct asd_ha_struct *asd_ha, gfp_t gfp_flags)
{
	struct asd_seq_data *seq = &asd_ha->seq;
	int i;

	seq->edb_arr = FUNC4(seq->num_edbs*sizeof(*seq->edb_arr), gfp_flags);
	if (!seq->edb_arr)
		return -ENOMEM;

	for (i = 0; i < seq->num_edbs; i++) {
		seq->edb_arr[i] = FUNC1(asd_ha, ASD_EDB_SIZE,
						     gfp_flags);
		if (!seq->edb_arr[i])
			goto Err_unroll;
		FUNC5(seq->edb_arr[i]->vaddr, 0, ASD_EDB_SIZE);
	}

	FUNC0("num_edbs:%d\n", seq->num_edbs);

	return 0;

Err_unroll:
	for (i-- ; i >= 0; i--)
		FUNC2(asd_ha, seq->edb_arr[i]);
	FUNC3(seq->edb_arr);
	seq->edb_arr = NULL;

	return -ENOMEM;
}