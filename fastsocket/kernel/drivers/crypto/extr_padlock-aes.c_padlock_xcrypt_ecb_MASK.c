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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,void*,void*,int) ; 
 int ecb_fetch_blocks ; 

__attribute__((used)) static inline void FUNC1(const u8 *input, u8 *output, void *key,
				      void *control_word, u32 count)
{
	u32 initial = count & (ecb_fetch_blocks - 1);

	if (count < ecb_fetch_blocks) {
		FUNC0(input, output, key, control_word, count);
		return;
	}

	if (initial)
		asm volatile (".byte 0xf3,0x0f,0xa7,0xc8"	/* rep xcryptecb */
			      : "+S"(input), "+D"(output)
			      : "d"(control_word), "b"(key), "c"(initial));

	asm volatile (".byte 0xf3,0x0f,0xa7,0xc8"	/* rep xcryptecb */
		      : "+S"(input), "+D"(output)
		      : "d"(control_word), "b"(key), "c"(count - initial));
}