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
typedef  int u16 ;
struct dib0070_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dib0070_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib0070_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static u16 FUNC3(struct dib0070_state *state, u8 gain)
{
    u16 tuner_en = FUNC0(state, 0x20);
    u16 offset;

    FUNC1(state, 0x18, 0x07ff);
    FUNC1(state, 0x20, 0x0800 | 0x4000 | 0x0040 | 0x0020 | 0x0010 | 0x0008 | 0x0002 | 0x0001);
    FUNC1(state, 0x0f, (1 << 14) | (2 << 12) | (gain << 9) | (1 << 8) | (1 << 7) | (0 << 0));
    FUNC2(9);
    offset = FUNC0(state, 0x19);
    FUNC1(state, 0x20, tuner_en);
    return offset;
}