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
typedef  int u64 ;
struct scm_request {int /*<<< orphan*/  request; } ;

/* Variables and functions */
 int CLUSTER_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct scm_request *A, struct scm_request *B)
{
	unsigned long firstA, lastA, firstB, lastB;

	firstA = ((u64) FUNC1(A->request) << 9) / CLUSTER_SIZE;
	lastA = (((u64) FUNC1(A->request) << 9) +
		    FUNC0(A->request) - 1) / CLUSTER_SIZE;

	firstB = ((u64) FUNC1(B->request) << 9) / CLUSTER_SIZE;
	lastB = (((u64) FUNC1(B->request) << 9) +
		    FUNC0(B->request) - 1) / CLUSTER_SIZE;

	return (firstB <= lastA && firstA <= lastB);
}