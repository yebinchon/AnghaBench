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
struct nxt6000_state {int dummy; } ;

/* Variables and functions */
 int COREACT ; 
 int /*<<< orphan*/  OFDM_COR_CTL ; 
 int FUNC0 (struct nxt6000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nxt6000_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct nxt6000_state* state)
{
	u8 val;

	val = FUNC0(state, OFDM_COR_CTL);

	FUNC1(state, OFDM_COR_CTL, val & ~COREACT);
	FUNC1(state, OFDM_COR_CTL, val | COREACT);
}