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
typedef  int /*<<< orphan*/  const u8 ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (struct crypto_tfm*) ; 
 unsigned int FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static void FUNC4(void (*fn)(struct crypto_tfm *, u8 *,
					      const u8 *),
				   struct crypto_tfm *tfm,
				   u8 *dst, const u8 *src)
{
	unsigned long alignmask = FUNC1(tfm);
	unsigned int size = FUNC2(tfm);
	u8 buffer[size + alignmask];
	u8 *tmp = (u8 *)FUNC0((unsigned long)buffer, alignmask + 1);

	FUNC3(tmp, src, size);
	fn(tfm, tmp, tmp);
	FUNC3(dst, tmp, size);
}