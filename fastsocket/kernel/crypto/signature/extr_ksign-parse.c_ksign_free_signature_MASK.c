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
struct ksign_signature {struct ksign_signature* unhashed_data; struct ksign_signature* hashed_data; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int DSA_NSIG ; 
 int /*<<< orphan*/  FUNC0 (struct ksign_signature*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct ksign_signature *sig)
{
	int i;

	if (sig) {
		for (i = 0; i < DSA_NSIG; i++)
			FUNC1(sig->data[i]);
		FUNC0(sig->hashed_data);
		FUNC0(sig->unhashed_data);
		FUNC0(sig);
	}
}