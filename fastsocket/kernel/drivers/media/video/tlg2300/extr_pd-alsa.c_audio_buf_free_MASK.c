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
struct poseidon_audio {scalar_t__* urb_array; } ;
struct poseidon {struct poseidon_audio audio; } ;

/* Variables and functions */
 int AUDIO_BUFS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct poseidon *p)
{
	struct poseidon_audio *pa = &p->audio;
	int i;

	for (i = 0; i < AUDIO_BUFS; i++)
		if (pa->urb_array[i])
			FUNC2(pa->urb_array[i]);
	FUNC0(pa->urb_array, AUDIO_BUFS);
	FUNC1();
	return 0;
}