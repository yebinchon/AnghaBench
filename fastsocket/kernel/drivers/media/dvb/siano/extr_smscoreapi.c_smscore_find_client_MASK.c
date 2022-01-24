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
struct smscore_idlist_t {int id; int data_type; } ;
struct list_head {struct list_head* next; } ;
struct smscore_device_t {int /*<<< orphan*/  clientslock; struct list_head clients; } ;
struct smscore_client_t {struct list_head idlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct
smscore_client_t *FUNC2(struct smscore_device_t *coredev,
				      int data_type, int id)
{
	struct smscore_client_t *client = NULL;
	struct list_head *next, *first;
	unsigned long flags;
	struct list_head *firstid, *nextid;


	FUNC0(&coredev->clientslock, flags);
	first = &coredev->clients;
	for (next = first->next;
	     (next != first) && !client;
	     next = next->next) {
		firstid = &((struct smscore_client_t *)next)->idlist;
		for (nextid = firstid->next;
		     nextid != firstid;
		     nextid = nextid->next) {
			if ((((struct smscore_idlist_t *)nextid)->id == id) &&
			    (((struct smscore_idlist_t *)nextid)->data_type == data_type ||
			    (((struct smscore_idlist_t *)nextid)->data_type == 0))) {
				client = (struct smscore_client_t *) next;
				break;
			}
		}
	}
	FUNC1(&coredev->clientslock, flags);
	return client;
}