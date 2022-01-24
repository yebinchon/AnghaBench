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
typedef  enum cname { ____Placeholder_cname } cname ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int CN_INVALID ; 
 char const** cp_name ; 

__attribute__((used)) static const char *FUNC1(enum cname name)
{
	if (name == CN_INVALID || name < 0 || name > FUNC0(cp_name))
		return "INVALID";

	return cp_name[name - 1];
}