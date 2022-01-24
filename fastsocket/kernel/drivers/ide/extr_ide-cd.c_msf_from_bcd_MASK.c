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
struct atapi_msf {void* frame; void* second; void* minute; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 

__attribute__((used)) static void FUNC1(struct atapi_msf *msf)
{
	msf->minute = FUNC0(msf->minute);
	msf->second = FUNC0(msf->second);
	msf->frame  = FUNC0(msf->frame);
}