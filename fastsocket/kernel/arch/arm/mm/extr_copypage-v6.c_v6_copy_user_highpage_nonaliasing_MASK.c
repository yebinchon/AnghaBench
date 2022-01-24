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
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  KM_USER1 ; 
 int /*<<< orphan*/  FUNC0 (void*,void*) ; 
 void* FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct page *to,
	struct page *from, unsigned long vaddr)
{
	void *kto, *kfrom;

	kfrom = FUNC1(from, KM_USER0);
	kto = FUNC1(to, KM_USER1);
	FUNC0(kto, kfrom);
	FUNC2(kto, KM_USER1);
	FUNC2(kfrom, KM_USER0);
}