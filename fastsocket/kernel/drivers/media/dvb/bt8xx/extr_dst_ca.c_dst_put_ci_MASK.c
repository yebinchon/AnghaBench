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
struct dst_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_CA_NOTICE ; 
 scalar_t__ RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC1 (struct dst_state*,scalar_t__*,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_state*) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC3(struct dst_state *state, u8 *data, int len, u8 *ca_string, int read)
{
	u8 dst_ca_comm_err = 0;

	while (dst_ca_comm_err < RETRIES) {
		FUNC0(verbose, DST_CA_NOTICE, 1, " Put Command");
		if (FUNC1(state, data, ca_string, len, read)) {	// If error
			FUNC2(state);
			dst_ca_comm_err++; // work required here.
		} else {
			break;
		}
	}

	if(dst_ca_comm_err == RETRIES)
		return -1;

	return 0;
}