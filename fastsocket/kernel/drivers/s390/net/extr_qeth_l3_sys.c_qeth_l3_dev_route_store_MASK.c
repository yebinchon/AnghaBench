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
struct qeth_routing_info {int type; } ;
struct qeth_card {scalar_t__ state; int /*<<< orphan*/  conf_mutex; } ;
typedef  int ssize_t ;
typedef  enum qeth_routing_types { ____Placeholder_qeth_routing_types } qeth_routing_types ;
typedef  enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;

/* Variables and functions */
 scalar_t__ CARD_STATE_SOFTSETUP ; 
 scalar_t__ CARD_STATE_UP ; 
 int EINVAL ; 
 int MULTICAST_ROUTER ; 
 int NO_ROUTER ; 
 int PRIMARY_CONNECTOR ; 
 int PRIMARY_ROUTER ; 
 int QETH_PROT_IPV4 ; 
 int QETH_PROT_IPV6 ; 
 int SECONDARY_CONNECTOR ; 
 int SECONDARY_ROUTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct qeth_card*) ; 
 int FUNC3 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char**,char*) ; 

__attribute__((used)) static ssize_t FUNC6(struct qeth_card *card,
		struct qeth_routing_info *route, enum qeth_prot_versions prot,
		const char *buf, size_t count)
{
	enum qeth_routing_types old_route_type = route->type;
	char *tmp;
	int rc = 0;

	tmp = FUNC5((char **) &buf, "\n");
	FUNC0(&card->conf_mutex);
	if (!FUNC4(tmp, "no_router")) {
		route->type = NO_ROUTER;
	} else if (!FUNC4(tmp, "primary_connector")) {
		route->type = PRIMARY_CONNECTOR;
	} else if (!FUNC4(tmp, "secondary_connector")) {
		route->type = SECONDARY_CONNECTOR;
	} else if (!FUNC4(tmp, "primary_router")) {
		route->type = PRIMARY_ROUTER;
	} else if (!FUNC4(tmp, "secondary_router")) {
		route->type = SECONDARY_ROUTER;
	} else if (!FUNC4(tmp, "multicast_router")) {
		route->type = MULTICAST_ROUTER;
	} else {
		rc = -EINVAL;
		goto out;
	}
	if (((card->state == CARD_STATE_SOFTSETUP) ||
	     (card->state == CARD_STATE_UP)) &&
	    (old_route_type != route->type)) {
		if (prot == QETH_PROT_IPV4)
			rc = FUNC2(card);
		else if (prot == QETH_PROT_IPV6)
			rc = FUNC3(card);
	}
out:
	FUNC1(&card->conf_mutex);
	return rc ? rc : count;
}