#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct priv {int /*<<< orphan*/  child; int /*<<< orphan*/  tweak; } ;
struct blkcipher_walk {int dummy; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; } ;
struct TYPE_2__ {int /*<<< orphan*/  cia_encrypt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC1 (struct blkcipher_desc*,struct blkcipher_walk*,struct priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct priv* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct blkcipher_desc *desc, struct scatterlist *dst,
		   struct scatterlist *src, unsigned int nbytes)
{
	struct priv *ctx = FUNC2(desc->tfm);
	struct blkcipher_walk w;

	FUNC0(&w, dst, src, nbytes);
	return FUNC1(desc, &w, ctx, FUNC3(ctx->tweak)->cia_encrypt,
		     FUNC3(ctx->child)->cia_encrypt);
}