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
struct csr_control {int split_timeout_hi; int split_timeout_lo; int /*<<< orphan*/  expire; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static inline void FUNC2(struct csr_control *csr)
{
	unsigned int usecs = (csr->split_timeout_hi & 7) * 1000000 +
			     (csr->split_timeout_lo >> 19) * 125;

	csr->expire = FUNC1(usecs > 100000 ? usecs : 100000);
	FUNC0("CSR: setting expire to %lu, HZ=%u", csr->expire, HZ);
}