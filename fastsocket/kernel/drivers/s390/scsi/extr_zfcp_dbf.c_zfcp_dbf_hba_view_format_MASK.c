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
struct TYPE_2__ {int /*<<< orphan*/  berr; int /*<<< orphan*/  qdio; int /*<<< orphan*/  status; int /*<<< orphan*/  response; } ;
struct zfcp_dbf_hba_record {int /*<<< orphan*/ * tag; TYPE_1__ u; int /*<<< orphan*/ * tag2; } ;
struct debug_view {int dummy; } ;
typedef  int /*<<< orphan*/  debug_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_DBF_TAG_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char**,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(debug_info_t *id, struct debug_view *view,
				    char *out_buf, const char *in_buf)
{
	struct zfcp_dbf_hba_record *r = (struct zfcp_dbf_hba_record *)in_buf;
	char *p = out_buf;

	if (FUNC2(r->tag, "dump", ZFCP_DBF_TAG_SIZE) == 0)
		return 0;

	FUNC7(&p, "tag", r->tag);
	if (FUNC0(r->tag2[0]))
		FUNC7(&p, "tag2", r->tag2);

	if (FUNC2(r->tag, "resp", ZFCP_DBF_TAG_SIZE) == 0)
		FUNC5(&p, &r->u.response);
	else if (FUNC2(r->tag, "stat", ZFCP_DBF_TAG_SIZE) == 0)
		FUNC6(&p, &r->u.status);
	else if (FUNC2(r->tag, "qdio", ZFCP_DBF_TAG_SIZE) == 0)
		FUNC4(&p, &r->u.qdio);
	else if (FUNC2(r->tag, "berr", ZFCP_DBF_TAG_SIZE) == 0)
		FUNC3(&p, &r->u.berr);

	if (FUNC2(r->tag, "resp", ZFCP_DBF_TAG_SIZE) != 0)
		p += FUNC1(p, "\n");
	return p - out_buf;
}