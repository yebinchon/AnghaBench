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
struct notifier_block {int dummy; } ;

/* Variables and functions */
#define  CRYPTO_MSG_ALG_REGISTER 129 
#define  CRYPTO_MSG_ALG_REQUEST 128 
 int NOTIFY_DONE ; 
 int FUNC0 (void*) ; 
 int FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *this, unsigned long msg,
			    void *data)
{
	switch (msg) {
	case CRYPTO_MSG_ALG_REQUEST:
		return FUNC0(data);
	case CRYPTO_MSG_ALG_REGISTER:
		return FUNC1(data);
	}

	return NOTIFY_DONE;
}