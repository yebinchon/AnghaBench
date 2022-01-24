#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct attribute_container {int /*<<< orphan*/ * class; } ;
struct TYPE_4__ {struct attribute_container ac; } ;
struct iscsi_internal {TYPE_1__ conn_cont; } ;
struct iscsi_cls_session {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct iscsi_cls_conn {TYPE_2__ dev; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
struct TYPE_6__ {int /*<<< orphan*/  class; } ;

/* Variables and functions */
 TYPE_3__ iscsi_connection_class ; 
 struct iscsi_cls_conn* FUNC0 (struct device*) ; 
 struct iscsi_cls_session* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct Scsi_Host* FUNC3 (struct iscsi_cls_session*) ; 
 struct iscsi_internal* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct attribute_container *cont,
			   struct device *dev)
{
	struct iscsi_cls_session *session;
	struct iscsi_cls_conn *conn;
	struct Scsi_Host *shost;
	struct iscsi_internal *priv;

	if (!FUNC2(dev))
		return 0;

	conn = FUNC0(dev);
	session = FUNC1(conn->dev.parent);
	shost = FUNC3(session);

	if (!shost->transportt)
		return 0;

	priv = FUNC4(shost->transportt);
	if (priv->conn_cont.ac.class != &iscsi_connection_class.class)
		return 0;

	return &priv->conn_cont.ac == cont;
}