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
typedef  int s32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ S6_DMA_CMONCHUNK ; 
 scalar_t__ S6_DMA_DSTSKIP ; 
 scalar_t__ S6_DMA_SRCSKIP ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(u32 dmac, int chan, u32 src, u32 dst, u32 size)
{
	if (FUNC6(src)) {
		u32 base = src;
		u32 span = size;
		u32 chunk = FUNC4(FUNC0(dmac, chan) + S6_DMA_CMONCHUNK);
		if (chunk && (size > chunk)) {
			s32 skip =
				FUNC4(FUNC0(dmac, chan) + S6_DMA_SRCSKIP);
			u32 gaps = (size+chunk-1)/chunk - 1;
			if (skip >= 0) {
				span += gaps * skip;
			} else if (-skip > chunk) {
				s32 decr = gaps * (chunk + skip);
				base += decr;
				span = chunk - decr;
			} else {
				span = FUNC3(span + gaps * skip,
					(chunk + skip) * gaps - skip);
			}
		}
		FUNC1(base, span);
	}
	if (FUNC7(dst)) {
		u32 base = dst;
		u32 span = size;
		u32 chunk = FUNC4(FUNC0(dmac, chan) + S6_DMA_CMONCHUNK);
		if (chunk && (size > chunk)) {
			s32 skip =
				FUNC4(FUNC0(dmac, chan) + S6_DMA_DSTSKIP);
			u32 gaps = (size+chunk-1)/chunk - 1;
			if (skip >= 0) {
				span += gaps * skip;
			} else if (-skip > chunk) {
				s32 decr = gaps * (chunk + skip);
				base += decr;
				span = chunk - decr;
			} else {
				span = FUNC3(span + gaps * skip,
					(chunk + skip) * gaps - skip);
			}
		}
		FUNC2(base, span);
	}
	FUNC5(dmac, chan, src, dst, size);
}