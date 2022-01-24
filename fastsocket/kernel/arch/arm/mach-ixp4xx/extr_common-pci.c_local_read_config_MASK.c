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
typedef  int u32 ;

/* Variables and functions */
 int PCIBIOS_SUCCESSFUL ; 
 int* bytemask ; 
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 

__attribute__((used)) static int FUNC2(int where, int size, u32 *value)
{ 
	u32 n, data;
	FUNC1("local_read_config from %d size %d\n", where, size);
	n = where % 4;
	FUNC0(where & ~3, &data);
	*value = (data >> (8*n)) & bytemask[size];
	FUNC1("local_read_config read %#x\n", *value);
	return PCIBIOS_SUCCESSFUL;
}