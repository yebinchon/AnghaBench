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
typedef  int /*<<< orphan*/  u32 ;
struct cword {int dummy; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cword*,int) ; 
 scalar_t__ cbc_fetch_bytes ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cword*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline u8 *FUNC3(const u8 *in, u8 *out, u32 *key,
			    u8 *iv, struct cword *cword, int count)
{
	/* Padlock in CBC mode fetches at least cbc_fetch_bytes of data. */
	if (FUNC2(((unsigned long)in & ~PAGE_MASK) + cbc_fetch_bytes > PAGE_SIZE))
		return FUNC0(in, out, key, iv, cword, count);

	return FUNC1(in, out, key, iv, cword, count);
}