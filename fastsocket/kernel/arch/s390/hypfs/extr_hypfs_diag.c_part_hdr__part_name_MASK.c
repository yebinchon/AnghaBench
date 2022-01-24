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
struct x_part_hdr {int /*<<< orphan*/  part_name; } ;
struct part_hdr {int /*<<< orphan*/  part_name; } ;
typedef  enum diag204_format { ____Placeholder_diag204_format } diag204_format ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int INFO_SIMPLE ; 
 size_t LPAR_NAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static inline void FUNC3(enum diag204_format type, void *hdr,
				       char *name)
{
	if (type == INFO_SIMPLE)
		FUNC1(name, ((struct part_hdr *)hdr)->part_name,
		       LPAR_NAME_LEN);
	else /* INFO_EXT */
		FUNC1(name, ((struct x_part_hdr *)hdr)->part_name,
		       LPAR_NAME_LEN);
	FUNC0(name, LPAR_NAME_LEN);
	name[LPAR_NAME_LEN] = 0;
	FUNC2(name);
}