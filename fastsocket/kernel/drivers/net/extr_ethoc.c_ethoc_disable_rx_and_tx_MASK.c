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
struct ethoc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODER ; 
 int MODER_RXEN ; 
 int MODER_TXEN ; 
 int FUNC0 (struct ethoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ethoc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct ethoc *dev)
{
	u32 mode = FUNC0(dev, MODER);
	mode &= ~(MODER_RXEN | MODER_TXEN);
	FUNC1(dev, MODER, mode);
}