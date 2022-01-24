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
struct queue_entry {int dummy; } ;
struct data_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  Q_INDEX_DMA_DONE ; 
 int FUNC0 (struct queue_entry*) ; 
 struct queue_entry* FUNC1 (struct data_queue*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct data_queue *queue)
{
	struct queue_entry *entry;

	entry = FUNC1(queue, Q_INDEX_DMA_DONE);
	return FUNC0(entry);
}