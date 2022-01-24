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
struct ql_adapter {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (void*,char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct ql_adapter *qdev, void *buf,
		u32 ram_addr, int word_count)
{
	int status;
	char *my_buf;
	dma_addr_t buf_dma;

	my_buf = FUNC1(qdev->pdev, word_count * sizeof(u32),
					&buf_dma);
	if (!my_buf)
		return -EIO;

	status = FUNC3(qdev, buf_dma, ram_addr, word_count);
	if (!status)
		FUNC0(buf, my_buf, word_count * sizeof(u32));

	FUNC2(qdev->pdev, word_count * sizeof(u32), my_buf,
				buf_dma);
	return status;
}