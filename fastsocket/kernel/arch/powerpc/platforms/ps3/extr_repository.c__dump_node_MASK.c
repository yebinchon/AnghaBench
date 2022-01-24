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
typedef  unsigned int u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int,unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int lpar_id, u64 n1, u64 n2, u64 n3, u64 n4,
	u64 v1, u64 v2, const char *func, int line)
{
	FUNC1("%s:%d: lpar: %u\n", func, line, lpar_id);
	FUNC0("n1: ", n1, func, line);
	FUNC0("n2: ", n2, func, line);
	FUNC0("n3: ", n3, func, line);
	FUNC0("n4: ", n4, func, line);
	FUNC1("%s:%d: v1: %016llx\n", func, line, v1);
	FUNC1("%s:%d: v2: %016llx\n", func, line, v2);
}