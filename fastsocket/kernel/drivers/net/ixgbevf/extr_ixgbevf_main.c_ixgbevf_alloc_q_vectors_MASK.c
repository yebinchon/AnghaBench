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
struct ixgbevf_q_vector {int v_idx; int /*<<< orphan*/  napi; struct ixgbevf_adapter* adapter; } ;
struct ixgbevf_adapter {int num_msix_vectors; struct ixgbevf_q_vector** q_vector; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NON_Q_VECTORS ; 
 int /*<<< orphan*/  ixgbevf_poll ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbevf_q_vector*) ; 
 struct ixgbevf_q_vector* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ixgbevf_adapter *adapter)
{
	int q_idx, num_q_vectors;
	struct ixgbevf_q_vector *q_vector;

	num_q_vectors = adapter->num_msix_vectors - NON_Q_VECTORS;

	for (q_idx = 0; q_idx < num_q_vectors; q_idx++) {
		q_vector = FUNC1(sizeof(struct ixgbevf_q_vector), GFP_KERNEL);
		if (!q_vector)
			goto err_out;
		q_vector->adapter = adapter;
		q_vector->v_idx = q_idx;
		FUNC2(adapter->netdev, &q_vector->napi,
			       ixgbevf_poll, 64);
		adapter->q_vector[q_idx] = q_vector;
	}

	return 0;

err_out:
	while (q_idx) {
		q_idx--;
		q_vector = adapter->q_vector[q_idx];
		FUNC3(&q_vector->napi);
		FUNC0(q_vector);
		adapter->q_vector[q_idx] = NULL;
	}
	return -ENOMEM;
}