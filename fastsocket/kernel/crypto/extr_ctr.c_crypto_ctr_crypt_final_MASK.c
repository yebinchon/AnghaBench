#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypto_cipher {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; int /*<<< orphan*/ * iv; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC1 (struct crypto_cipher*) ; 
 unsigned int FUNC2 (struct crypto_cipher*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_cipher*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct blkcipher_walk *walk,
				   struct crypto_cipher *tfm)
{
	unsigned int bsize = FUNC2(tfm);
	unsigned long alignmask = FUNC1(tfm);
	u8 *ctrblk = walk->iv;
	u8 tmp[bsize + alignmask];
	u8 *keystream = FUNC0(tmp + 0, alignmask + 1);
	u8 *src = walk->src.virt.addr;
	u8 *dst = walk->dst.virt.addr;
	unsigned int nbytes = walk->nbytes;

	FUNC3(tfm, keystream, ctrblk);
	FUNC5(keystream, src, nbytes);
	FUNC6(dst, keystream, nbytes);

	FUNC4(ctrblk, bsize);
}