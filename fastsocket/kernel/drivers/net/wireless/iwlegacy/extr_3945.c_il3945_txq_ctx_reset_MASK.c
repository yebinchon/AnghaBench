#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int max_txq_num; } ;
struct il_priv {TYPE_1__ hw_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*) ; 
 int FUNC2 (struct il_priv*) ; 
 int FUNC3 (struct il_priv*) ; 
 int FUNC4 (struct il_priv*,int) ; 

__attribute__((used)) static int
FUNC5(struct il_priv *il)
{
	int rc, txq_id;

	FUNC1(il);

	/* allocate tx queue structure */
	rc = FUNC3(il);
	if (rc)
		return rc;

	/* Tx CMD queue */
	rc = FUNC2(il);
	if (rc)
		goto error;

	/* Tx queue(s) */
	for (txq_id = 0; txq_id < il->hw_params.max_txq_num; txq_id++) {
		rc = FUNC4(il, txq_id);
		if (rc) {
			FUNC0("Tx %d queue init failed\n", txq_id);
			goto error;
		}
	}

	return rc;

error:
	FUNC1(il);
	return rc;
}