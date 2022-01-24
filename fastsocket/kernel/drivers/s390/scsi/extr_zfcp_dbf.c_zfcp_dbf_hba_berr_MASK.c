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
struct zfcp_fsf_req {struct fsf_status_read_buffer* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  berr; } ;
struct zfcp_dbf_hba_record {TYPE_2__ u; int /*<<< orphan*/  tag; } ;
struct zfcp_dbf {int /*<<< orphan*/  hba_lock; int /*<<< orphan*/  hba; struct zfcp_dbf_hba_record hba_buf; } ;
struct fsf_bit_error_payload {int dummy; } ;
struct TYPE_3__ {struct fsf_bit_error_payload bit_error; } ;
struct fsf_status_read_buffer {TYPE_1__ payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_DBF_TAG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zfcp_dbf_hba_record*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fsf_bit_error_payload*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_dbf_hba_record*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC6(struct zfcp_dbf *dbf, struct zfcp_fsf_req *req)
{
	struct zfcp_dbf_hba_record *r = &dbf->hba_buf;
	struct fsf_status_read_buffer *sr_buf = req->data;
	struct fsf_bit_error_payload *err = &sr_buf->payload.bit_error;
	unsigned long flags;

	FUNC3(&dbf->hba_lock, flags);
	FUNC2(r, 0, sizeof(*r));
	FUNC5(r->tag, "berr", ZFCP_DBF_TAG_SIZE);
	FUNC1(&r->u.berr, err, sizeof(struct fsf_bit_error_payload));
	FUNC0(dbf->hba, 0, r, sizeof(*r));
	FUNC4(&dbf->hba_lock, flags);
}