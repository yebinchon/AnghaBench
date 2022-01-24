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
struct stir_cb {int /*<<< orphan*/  speed; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stir_cb*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stir_cb*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static inline void FUNC3(struct stir_cb *stir,
				const __u8 *bytes, int length)
{
	if (FUNC0(stir->speed))
		FUNC1(stir, bytes, length);
	else
		FUNC2(stir, bytes, length);
}