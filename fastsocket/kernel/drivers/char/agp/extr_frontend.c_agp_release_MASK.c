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
struct inode {int dummy; } ;
struct file {struct agp_file_private* private_data; } ;
struct agp_file_private {int /*<<< orphan*/  my_pid; int /*<<< orphan*/  access_flags; } ;
struct agp_controller {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  agp_mutex; struct agp_controller* current_controller; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_FF_IS_CLIENT ; 
 int /*<<< orphan*/  AGP_FF_IS_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (char*,struct agp_file_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct agp_controller*,struct agp_file_private*) ; 
 TYPE_1__ agp_fe ; 
 struct agp_controller* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct agp_controller*) ; 
 int /*<<< orphan*/  FUNC5 (struct agp_file_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct agp_file_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct file *file)
{
	struct agp_file_private *priv = file->private_data;

	FUNC7(&(agp_fe.agp_mutex));

	FUNC0("priv=%p", priv);

	if (FUNC9(AGP_FF_IS_CONTROLLER, &priv->access_flags)) {
		struct agp_controller *controller;

		controller = FUNC2(priv->my_pid);

		if (controller != NULL) {
			if (controller == agp_fe.current_controller)
				FUNC1(controller, priv);
			FUNC4(controller);
			controller = NULL;
		}
	}

	if (FUNC9(AGP_FF_IS_CLIENT, &priv->access_flags))
		FUNC3(priv->my_pid);

	FUNC5(priv);
	FUNC6(priv);
	file->private_data = NULL;
	FUNC8(&(agp_fe.agp_mutex));
	return 0;
}