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
struct si_sm_data {scalar_t__ obf_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 scalar_t__ OBF_RETRY_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct si_sm_data*,char*) ; 

__attribute__((used)) static inline int FUNC2(struct si_sm_data *kcs, unsigned char status,
			    long time)
{
	if (!FUNC0(status)) {
		kcs->obf_timeout -= time;
		if (kcs->obf_timeout < 0) {
		    FUNC1(kcs, "OBF not ready in time");
		    return 1;
		}
		return 0;
	}
	kcs->obf_timeout = OBF_RETRY_TIMEOUT;
	return 1;
}