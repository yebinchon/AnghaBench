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
struct nouveau_client {char* name; } ;

/* Variables and functions */
 struct nouveau_client* FUNC0 (void*) ; 

const char *
FUNC1(void *obj)
{
	const char *client_name = "unknown";
	struct nouveau_client *client = FUNC0(obj);
	if (client)
		client_name = client->name;
	return client_name;
}