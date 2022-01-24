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
typedef  int /*<<< orphan*/  u64 ;
typedef  unsigned int u16 ;
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qib_devdata const*,unsigned int const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(const struct qib_devdata *dd,
				       const u16 regno, unsigned ctxt,
				       u64 value)
{
	FUNC0(dd, regno + ctxt, value);
}