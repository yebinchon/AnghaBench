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
struct crypto_async_request {int dummy; } ;
struct cryptd_queue {int /*<<< orphan*/  cpu_queue; } ;
struct cryptd_cpu_queue {int /*<<< orphan*/  work; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct crypto_async_request*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  kcrypto_wq ; 
 struct cryptd_cpu_queue* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct cryptd_queue *queue,
				  struct crypto_async_request *request)
{
	int cpu, err;
	struct cryptd_cpu_queue *cpu_queue;

	cpu = FUNC1();
	cpu_queue = FUNC2(queue->cpu_queue, cpu);
	err = FUNC0(&cpu_queue->queue, request);
	FUNC4(cpu, kcrypto_wq, &cpu_queue->work);
	FUNC3();

	return err;
}