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
struct crypto_hash_walk {int /*<<< orphan*/  data; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct crypto_hash_walk*,int) ; 
 int FUNC1 (struct ahash_request*,struct crypto_hash_walk*) ; 
 int FUNC2 (struct shash_desc*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct ahash_request *req, struct shash_desc *desc)
{
	struct crypto_hash_walk walk;
	int nbytes;

	for (nbytes = FUNC1(req, &walk); nbytes > 0;
	     nbytes = FUNC0(&walk, nbytes))
		nbytes = FUNC2(desc, walk.data, nbytes);

	return nbytes;
}