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
struct cfq_queue {int* allocated; int ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t READ ; 
 size_t WRITE ; 

__attribute__((used)) static int FUNC1(struct cfq_queue *cfqq)
{
	int process_refs, io_refs;

	io_refs = cfqq->allocated[READ] + cfqq->allocated[WRITE];
	process_refs = cfqq->ref - io_refs;
	FUNC0(process_refs < 0);
	return process_refs;
}