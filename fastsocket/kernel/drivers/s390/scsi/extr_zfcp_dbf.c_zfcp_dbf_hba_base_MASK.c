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
struct zfcp_dbf_hba_record {int /*<<< orphan*/  tag2; int /*<<< orphan*/  tag; } ;
struct zfcp_dbf {int /*<<< orphan*/  hba_lock; int /*<<< orphan*/  hba; struct zfcp_dbf_hba_record hba_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_DBF_TAG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zfcp_dbf_hba_record*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_dbf_hba_record*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC5(struct zfcp_dbf *dbf, char *tag2)
{
	struct zfcp_dbf_hba_record *r = &dbf->hba_buf;
	unsigned long flags;

	FUNC2(&dbf->hba_lock, flags);
	FUNC1(r, 0, sizeof(*r));
	FUNC4(r->tag, "base", ZFCP_DBF_TAG_SIZE);
	FUNC4(r->tag2, tag2, ZFCP_DBF_TAG_SIZE);
	FUNC0(dbf->hba, 0, r, sizeof(*r));
	FUNC3(&dbf->hba_lock, flags);
}