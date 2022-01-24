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
struct csrow_info {size_t edac_mode; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 char** edac_caps ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC1(struct csrow_info *csrow, char *data,
				int private)
{
	return FUNC0(data, "%s\n", edac_caps[csrow->edac_mode]);
}