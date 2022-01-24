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
struct crypto_skcipher_spawn {int dummy; } ;
struct crypto_instance {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_skcipher_spawn*) ; 
 struct crypto_skcipher_spawn* FUNC1 (struct crypto_instance*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_instance*) ; 

__attribute__((used)) static void FUNC3(struct crypto_instance *inst)
{
	struct crypto_skcipher_spawn *spawn = FUNC1(inst);

	FUNC0(spawn);
	FUNC2(inst);
}