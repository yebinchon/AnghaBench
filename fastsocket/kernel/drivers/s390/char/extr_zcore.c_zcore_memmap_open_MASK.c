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
struct mem_chunk {scalar_t__ size; scalar_t__ addr; } ;
struct inode {int dummy; } ;
struct file {char* private_data; } ;

/* Variables and functions */
 int CHUNK_INFO_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MEMORY_CHUNKS ; 
 int /*<<< orphan*/  FUNC0 (struct mem_chunk*) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_chunk*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned long long,unsigned long long) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filp)
{
	int i;
	char *buf;
	struct mem_chunk *chunk_array;

	chunk_array = FUNC2(MEMORY_CHUNKS * sizeof(struct mem_chunk),
			      GFP_KERNEL);
	if (!chunk_array)
		return -ENOMEM;
	FUNC0(chunk_array);
	buf = FUNC2(MEMORY_CHUNKS * CHUNK_INFO_SIZE, GFP_KERNEL);
	if (!buf) {
		FUNC1(chunk_array);
		return -ENOMEM;
	}
	for (i = 0; i < MEMORY_CHUNKS; i++) {
		FUNC3(buf + (i * CHUNK_INFO_SIZE), "%016llx %016llx ",
			(unsigned long long) chunk_array[i].addr,
			(unsigned long long) chunk_array[i].size);
		if (chunk_array[i].size == 0)
			break;
	}
	FUNC1(chunk_array);
	filp->private_data = buf;
	return 0;
}