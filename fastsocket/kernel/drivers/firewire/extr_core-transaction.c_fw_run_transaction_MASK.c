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
struct transaction_callback_data {int rcode; int /*<<< orphan*/  done; void* payload; } ;
struct fw_transaction {int dummy; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fw_card*,struct fw_transaction*,int,int,int,int,unsigned long long,void*,size_t,int /*<<< orphan*/ ,struct transaction_callback_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  transaction_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct fw_card *card, int tcode, int destination_id,
		       int generation, int speed, unsigned long long offset,
		       void *payload, size_t length)
{
	struct transaction_callback_data d;
	struct fw_transaction t;

	FUNC1(&d.done);
	d.payload = payload;
	FUNC0(card, &t, tcode, destination_id, generation, speed,
			offset, payload, length, transaction_callback, &d);
	FUNC2(&d.done);

	return d.rcode;
}