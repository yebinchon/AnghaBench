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
typedef  scalar_t__ u16 ;
struct ioat2_dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ioat2_dma_chan*) ; 
 scalar_t__ FUNC2 (struct ioat2_dma_chan*) ; 

__attribute__((used)) static inline u16 FUNC3(struct ioat2_dma_chan *ioat)
{
	u16 num_descs = FUNC2(ioat) + 1;
	u16 active = FUNC1(ioat);

	FUNC0(active > num_descs);

	return num_descs - active;
}