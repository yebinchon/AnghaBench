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
typedef  int ssize_t ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 unsigned long NVRW_CNT ; 
 scalar_t__ RTAS_UNKNOWN_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  nvram_buf ; 
 scalar_t__ nvram_fetch ; 
 int /*<<< orphan*/  nvram_lock ; 
 unsigned int nvram_size ; 
 scalar_t__ FUNC2 (scalar_t__,int,int,int*,unsigned int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC5(char *buf, size_t count, loff_t *index)
{
	unsigned int i;
	unsigned long len;
	int done;
	unsigned long flags;
	char *p = buf;


	if (nvram_size == 0 || nvram_fetch == RTAS_UNKNOWN_SERVICE)
		return -ENODEV;

	if (*index >= nvram_size)
		return 0;

	i = *index;
	if (i + count > nvram_size)
		count = nvram_size - i;

	FUNC3(&nvram_lock, flags);

	for (; count != 0; count -= len) {
		len = count;
		if (len > NVRW_CNT)
			len = NVRW_CNT;
		
		if ((FUNC2(nvram_fetch, 3, 2, &done, i, FUNC0(nvram_buf),
			       len) != 0) || len != done) {
			FUNC4(&nvram_lock, flags);
			return -EIO;
		}
		
		FUNC1(p, nvram_buf, len);

		p += len;
		i += len;
	}

	FUNC4(&nvram_lock, flags);
	
	*index = i;
	return p - buf;
}