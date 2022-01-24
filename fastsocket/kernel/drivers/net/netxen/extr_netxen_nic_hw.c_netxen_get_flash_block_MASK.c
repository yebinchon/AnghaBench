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
typedef  int /*<<< orphan*/  u32 ;
struct netxen_adapter {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct netxen_adapter*,int,int*) ; 

__attribute__((used)) static int FUNC3(struct netxen_adapter *adapter, int base,
				  int size, __le32 * buf)
{
	int i, v, addr;
	__le32 *ptr32;

	addr = base;
	ptr32 = buf;
	for (i = 0; i < size / sizeof(u32); i++) {
		if (FUNC2(adapter, addr, &v) == -1)
			return -1;
		*ptr32 = FUNC0(v);
		ptr32++;
		addr += sizeof(u32);
	}
	if ((char *)buf + size > (char *)ptr32) {
		__le32 local;
		if (FUNC2(adapter, addr, &v) == -1)
			return -1;
		local = FUNC0(v);
		FUNC1(ptr32, &local, (char *)buf + size - (char *)ptr32);
	}

	return 0;
}