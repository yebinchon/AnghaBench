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
struct efx_filter_spec {int* data; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct efx_filter_spec *spec,
					 __be32 host1, __be16 port1,
					 __be32 host2, __be16 port2)
{
	spec->data[0] = FUNC0(host1) << 16 | FUNC1(port1);
	spec->data[1] = FUNC1(port2) << 16 | FUNC0(host1) >> 16;
	spec->data[2] = FUNC0(host2);
}