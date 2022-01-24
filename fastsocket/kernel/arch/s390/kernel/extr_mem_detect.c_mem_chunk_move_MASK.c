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
 int MEMORY_CHUNKS ; 
 int /*<<< orphan*/  FUNC0 (struct mem_chunk*,struct mem_chunk*,int) ; 

__attribute__((used)) static void FUNC1(struct mem_chunk chunk[], int to, int from)
{
	int cnt = MEMORY_CHUNKS - to;

	FUNC0(&chunk[to], &chunk[from], cnt * sizeof(struct mem_chunk));
}