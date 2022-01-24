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
struct shash_desc {int dummy; } ;
struct scatterlist {int dummy; } ;
struct hash_desc {int /*<<< orphan*/  tfm; } ;
struct crypto_hash_walk {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 struct shash_desc** FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct crypto_hash_walk*,int) ; 
 int FUNC2 (struct hash_desc*,struct crypto_hash_walk*,struct scatterlist*,unsigned int) ; 
 int FUNC3 (struct shash_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct hash_desc *hdesc, struct scatterlist *sg,
			       unsigned int len)
{
	struct shash_desc **descp = FUNC0(hdesc->tfm);
	struct shash_desc *desc = *descp;
	struct crypto_hash_walk walk;
	int nbytes;

	for (nbytes = FUNC2(hdesc, &walk, sg, len);
	     nbytes > 0; nbytes = FUNC1(&walk, nbytes))
		nbytes = FUNC3(desc, walk.data, nbytes);

	return nbytes;
}