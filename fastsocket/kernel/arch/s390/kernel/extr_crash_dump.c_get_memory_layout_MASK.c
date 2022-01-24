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
struct mem_chunk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHUNK_CRASHK ; 
 int MEMORY_CHUNKS ; 
 int /*<<< orphan*/  OLDMEM_BASE ; 
 int /*<<< orphan*/  OLDMEM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mem_chunk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_chunk*) ; 
 struct mem_chunk* FUNC2 (int) ; 

__attribute__((used)) static struct mem_chunk *FUNC3(void)
{
	struct mem_chunk *chunk_array;

	chunk_array = FUNC2(MEMORY_CHUNKS * sizeof(struct mem_chunk));
	FUNC1(chunk_array);
	FUNC0(chunk_array, OLDMEM_BASE, OLDMEM_SIZE, CHUNK_CRASHK);
	return chunk_array;
}