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
typedef  int u16 ;
struct ioat2_dma_chan {int head; int issued; } ;

/* Variables and functions */
 int FUNC0 (struct ioat2_dma_chan*) ; 

__attribute__((used)) static inline u16 FUNC1(struct ioat2_dma_chan *ioat)
{
	return (ioat->head - ioat->issued) & FUNC0(ioat);
}