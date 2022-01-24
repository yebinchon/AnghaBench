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
typedef  int /*<<< orphan*/  u32 ;
struct ghes_estatus_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ghes_estatus_cache*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ghes_estatus_cache_alloced ; 
 int /*<<< orphan*/  ghes_estatus_pool ; 

__attribute__((used)) static void FUNC5(struct ghes_estatus_cache *cache)
{
	u32 len;

	len = FUNC2(FUNC1(cache));
	len = FUNC0(len);
	FUNC4(ghes_estatus_pool, (unsigned long)cache, len);
	FUNC3(&ghes_estatus_cache_alloced);
}