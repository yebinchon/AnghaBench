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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 size_t B43legacy_INTERFSTACK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(u32 *_stackptr, size_t *stackidx,
			u8 id, u16 offset, u16 value)
{
	u32 *stackptr = &(_stackptr[*stackidx]);

	FUNC0(!((offset & 0xE000) == 0x0000));
	FUNC0(!((id & 0xF8) == 0x00));
	*stackptr = offset;
	*stackptr |= ((u32)id) << 13;
	*stackptr |= ((u32)value) << 16;
	(*stackidx)++;
	FUNC0(!(*stackidx < B43legacy_INTERFSTACK_SIZE));
}