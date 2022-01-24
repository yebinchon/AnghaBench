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
struct TYPE_5__ {int pv_pal_vendor; int pv_pal_a_model; int pv_pal_a_rev; int pv_pal_b_model; int pv_pal_b_rev; } ;
struct TYPE_6__ {TYPE_1__ pal_version_s; } ;
typedef  TYPE_2__ pal_version_u_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int,int,int,int,int,int,int,int) ; 

__attribute__((used)) static int
FUNC2(char *page)
{
	pal_version_u_t min_ver, cur_ver;
	char *p = page;

	if (FUNC0(&min_ver, &cur_ver) != 0)
		return 0;

	p += FUNC1(p,
		     "PAL_vendor : 0x%02x (min=0x%02x)\n"
		     "PAL_A      : %02x.%02x (min=%02x.%02x)\n"
		     "PAL_B      : %02x.%02x (min=%02x.%02x)\n",
		     cur_ver.pal_version_s.pv_pal_vendor,
		     min_ver.pal_version_s.pv_pal_vendor,
		     cur_ver.pal_version_s.pv_pal_a_model,
		     cur_ver.pal_version_s.pv_pal_a_rev,
		     min_ver.pal_version_s.pv_pal_a_model,
		     min_ver.pal_version_s.pv_pal_a_rev,
		     cur_ver.pal_version_s.pv_pal_b_model,
		     cur_ver.pal_version_s.pv_pal_b_rev,
		     min_ver.pal_version_s.pv_pal_b_model,
		     min_ver.pal_version_s.pv_pal_b_rev);
	return p - page;
}