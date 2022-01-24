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
struct dm_target_spec {int next; int /*<<< orphan*/  target_type; int /*<<< orphan*/  length; int /*<<< orphan*/  sector_start; scalar_t__ status; } ;
struct dm_target {TYPE_1__* type; int /*<<< orphan*/  len; int /*<<< orphan*/  begin; } ;
struct dm_table {int dummy; } ;
struct dm_ioctl {int flags; int data_start; size_t data_size; unsigned int target_count; } ;
typedef  int /*<<< orphan*/  status_type_t ;
struct TYPE_2__ {scalar_t__ (* status ) (struct dm_target*,int /*<<< orphan*/ ,char*,size_t) ;scalar_t__ (* status_with_flags ) (struct dm_target*,int /*<<< orphan*/ ,unsigned int,char*,size_t) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int DM_BUFFER_FULL_FLAG ; 
 int DM_NOFLUSH_FLAG ; 
 unsigned int DM_STATUS_NOFLUSH_FLAG ; 
 int DM_STATUS_TABLE_FLAG ; 
 int /*<<< orphan*/  STATUSTYPE_INFO ; 
 int /*<<< orphan*/  STATUSTYPE_TABLE ; 
 char* FUNC0 (char*) ; 
 unsigned int FUNC1 (struct dm_table*) ; 
 struct dm_target* FUNC2 (struct dm_table*,unsigned int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (struct dm_ioctl*,size_t,size_t*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct dm_target*,int /*<<< orphan*/ ,unsigned int,char*,size_t) ; 
 scalar_t__ FUNC8 (struct dm_target*,int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static void FUNC9(struct dm_table *table,
			    struct dm_ioctl *param, size_t param_size)
{
	unsigned int i, num_targets;
	struct dm_target_spec *spec;
	char *outbuf, *outptr;
	status_type_t type;
	size_t remaining, len, used = 0;
	unsigned status_flags = 0;

	outptr = outbuf = FUNC4(param, param_size, &len);

	if (param->flags & DM_STATUS_TABLE_FLAG)
		type = STATUSTYPE_TABLE;
	else
		type = STATUSTYPE_INFO;

	/* Get all the target info */
	num_targets = FUNC1(table);
	for (i = 0; i < num_targets; i++) {
		struct dm_target *ti = FUNC2(table, i);
		size_t l;

		remaining = len - (outptr - outbuf);
		if (remaining <= sizeof(struct dm_target_spec)) {
			param->flags |= DM_BUFFER_FULL_FLAG;
			break;
		}

		spec = (struct dm_target_spec *) outptr;

		spec->status = 0;
		spec->sector_start = ti->begin;
		spec->length = ti->len;
		FUNC6(spec->target_type, ti->type->name,
			sizeof(spec->target_type));

		outptr += sizeof(struct dm_target_spec);
		remaining = len - (outptr - outbuf);
		if (remaining <= 0) {
			param->flags |= DM_BUFFER_FULL_FLAG;
			break;
		}

		/* Get the status/table string from the target driver */
		if (FUNC3(ti->type) &&
		    ti->type->status_with_flags) {
			/*
			 * Use the RHEL-specific hook for getting status with flags
			 * - for more details see the comment in device-mapper.h
			 */
			if (param->flags & DM_NOFLUSH_FLAG)
				status_flags |= DM_STATUS_NOFLUSH_FLAG;
			if (ti->type->status_with_flags(ti, type, status_flags,
							outptr, remaining)) {
				param->flags |= DM_BUFFER_FULL_FLAG;
				break;
			}
		} else if (ti->type->status) {
			if (ti->type->status(ti, type, outptr, remaining)) {
				param->flags |= DM_BUFFER_FULL_FLAG;
				break;
			}
		} else
			outptr[0] = '\0';

		l = FUNC5(outptr) + 1;
		if (l == remaining) {
			param->flags |= DM_BUFFER_FULL_FLAG;
			break;
		}

		outptr += l;
		used = param->data_start + (outptr - outbuf);

		outptr = FUNC0(outptr);
		spec->next = outptr - outbuf;
	}

	if (used)
		param->data_size = used;

	param->target_count = num_targets;
}