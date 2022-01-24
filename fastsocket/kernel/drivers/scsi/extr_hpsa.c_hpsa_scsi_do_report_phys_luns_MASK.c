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
struct ctlr_info {int dummy; } ;
struct ReportLUNdata {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ctlr_info*,int /*<<< orphan*/ ,struct ReportLUNdata*,int,int) ; 

__attribute__((used)) static inline int FUNC1(struct ctlr_info *h,
		struct ReportLUNdata *buf,
		int bufsize, int extended_response)
{
	return FUNC0(h, 0, buf, bufsize, extended_response);
}