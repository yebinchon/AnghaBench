#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t pgbuf; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ vtx_pagereq_t ;
typedef  int /*<<< orphan*/  vtx_pageinfo_t ;
struct TYPE_6__ {size_t numpages; int /*<<< orphan*/  version_minor; int /*<<< orphan*/  version_major; } ;
typedef  TYPE_2__ vtx_info_t ;
struct saa5246a_device {int /*<<< orphan*/ * pgbuf; } ;
struct file {int dummy; } ;

/* Variables and functions */
 long EFAULT ; 
 long EINVAL ; 
 int /*<<< orphan*/  MAJOR_VERSION ; 
 int /*<<< orphan*/  MINOR_VERSION ; 
 size_t NUM_DAUS ; 
#define  VTXIOCCLRCACHE 139 
#define  VTXIOCCLRFOUND 138 
#define  VTXIOCCLRPAGE 137 
#define  VTXIOCGETINFO 136 
#define  VTXIOCGETPAGE 135 
#define  VTXIOCGETSTAT 134 
#define  VTXIOCPAGEREQ 133 
#define  VTXIOCPUTPAGE 132 
#define  VTXIOCPUTSTAT 131 
#define  VTXIOCSETDISP 130 
#define  VTXIOCSETVIRT 129 
#define  VTXIOCSTOPDAU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char,int) ; 
 long FUNC2 (struct saa5246a_device*,size_t) ; 
 long FUNC3 (struct saa5246a_device*,TYPE_1__*) ; 
 int FUNC4 (struct saa5246a_device*,int /*<<< orphan*/ *,size_t) ; 
 long FUNC5 (struct saa5246a_device*,TYPE_1__*) ; 
 long FUNC6 (struct saa5246a_device*,size_t) ; 
 struct saa5246a_device* FUNC7 (struct file*) ; 

__attribute__((used)) static long FUNC8(struct file *file, unsigned int cmd, void *arg)
{
	struct saa5246a_device *t = FUNC7(file);

	switch(cmd)
	{
		case VTXIOCGETINFO:
		{
			vtx_info_t *info = arg;

			info->version_major = MAJOR_VERSION;
			info->version_minor = MINOR_VERSION;
			info->numpages = NUM_DAUS;
			return 0;
		}

		case VTXIOCCLRPAGE:
		{
			vtx_pagereq_t *req = arg;

			if (req->pgbuf < 0 || req->pgbuf >= NUM_DAUS)
				return -EINVAL;
			FUNC1(t->pgbuf[req->pgbuf], ' ', sizeof(t->pgbuf[0]));
			return 0;
		}

		case VTXIOCCLRFOUND:
		{
			vtx_pagereq_t *req = arg;

			if (req->pgbuf < 0 || req->pgbuf >= NUM_DAUS)
				return -EINVAL;
			return(FUNC2(t, req->pgbuf));
		}

		case VTXIOCPAGEREQ:
		{
			vtx_pagereq_t *req = arg;

			return(FUNC5(t, req));
		}

		case VTXIOCGETSTAT:
		{
			vtx_pagereq_t *req = arg;
			vtx_pageinfo_t info;
			int rval;

			if ((rval = FUNC4(t, &info, req->pgbuf)))
				return rval;
			if(FUNC0(req->buffer, &info,
				sizeof(vtx_pageinfo_t)))
				return -EFAULT;
			return 0;
		}

		case VTXIOCGETPAGE:
		{
			vtx_pagereq_t *req = arg;

			return(FUNC3(t, req));
		}

		case VTXIOCSTOPDAU:
		{
			vtx_pagereq_t *req = arg;

			return(FUNC6(t, req->pgbuf));
		}

		case VTXIOCPUTPAGE:
		case VTXIOCSETDISP:
		case VTXIOCPUTSTAT:
			return 0;

		case VTXIOCCLRCACHE:
		{
			return 0;
		}

		case VTXIOCSETVIRT:
		{
			/* I do not know what "virtual mode" means */
			return 0;
		}
	}
	return -EINVAL;
}