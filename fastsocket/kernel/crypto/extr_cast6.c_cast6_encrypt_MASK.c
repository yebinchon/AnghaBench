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
struct crypto_tfm {int dummy; } ;
struct cast6_ctx {int /*<<< orphan*/ ** Kr; int /*<<< orphan*/ ** Km; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct cast6_ctx* FUNC4 (struct crypto_tfm*) ; 

__attribute__((used)) static void FUNC5(struct crypto_tfm *tfm, u8 *outbuf, const u8 *inbuf)
{
	struct cast6_ctx *c = FUNC4(tfm);
	const __be32 *src = (const __be32 *)inbuf;
	__be32 *dst = (__be32 *)outbuf;
	u32 block[4];
	u32 * Km; 
	u8 * Kr;

	block[0] = FUNC2(src[0]);
	block[1] = FUNC2(src[1]);
	block[2] = FUNC2(src[2]);
	block[3] = FUNC2(src[3]);

	Km = c->Km[0]; Kr = c->Kr[0]; FUNC0 (block, Kr, Km);
	Km = c->Km[1]; Kr = c->Kr[1]; FUNC0 (block, Kr, Km);
	Km = c->Km[2]; Kr = c->Kr[2]; FUNC0 (block, Kr, Km);
	Km = c->Km[3]; Kr = c->Kr[3]; FUNC0 (block, Kr, Km);
	Km = c->Km[4]; Kr = c->Kr[4]; FUNC0 (block, Kr, Km);
	Km = c->Km[5]; Kr = c->Kr[5]; FUNC0 (block, Kr, Km);
	Km = c->Km[6]; Kr = c->Kr[6]; FUNC1 (block, Kr, Km);
	Km = c->Km[7]; Kr = c->Kr[7]; FUNC1 (block, Kr, Km);
	Km = c->Km[8]; Kr = c->Kr[8]; FUNC1 (block, Kr, Km);
	Km = c->Km[9]; Kr = c->Kr[9]; FUNC1 (block, Kr, Km);
	Km = c->Km[10]; Kr = c->Kr[10]; FUNC1 (block, Kr, Km);
	Km = c->Km[11]; Kr = c->Kr[11]; FUNC1 (block, Kr, Km);

	dst[0] = FUNC3(block[0]);
	dst[1] = FUNC3(block[1]);
	dst[2] = FUNC3(block[2]);
	dst[3] = FUNC3(block[3]);
}