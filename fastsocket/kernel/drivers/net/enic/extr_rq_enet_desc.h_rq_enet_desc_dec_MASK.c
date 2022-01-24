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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct rq_enet_desc {int /*<<< orphan*/  length_type; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int RQ_ENET_LEN_BITS ; 
 int RQ_ENET_LEN_MASK ; 
 int RQ_ENET_TYPE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct rq_enet_desc *desc,
	u64 *address, u8 *type, u16 *length)
{
	*address = FUNC1(desc->address);
	*length = FUNC0(desc->length_type) & RQ_ENET_LEN_MASK;
	*type = (u8)((FUNC0(desc->length_type) >> RQ_ENET_LEN_BITS) &
		RQ_ENET_TYPE_MASK);
}