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
struct sge_fl {scalar_t__ avail; scalar_t__ pend_cred; } ;

/* Variables and functions */
 scalar_t__ FL_STARVE_THRES ; 

__attribute__((used)) static inline bool FUNC0(const struct sge_fl *fl)
{
	return fl->avail - fl->pend_cred <= FL_STARVE_THRES;
}