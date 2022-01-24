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
struct file {int dummy; } ;
struct cx88_core {char* name; } ;
struct cx8802_fh {struct cx8802_dev* dev; } ;
struct cx8802_dev {int /*<<< orphan*/  params; struct cx88_core* core; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx88_core*,struct cx88_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  log_status ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC4 (struct file *file, void *priv)
{
	struct cx8802_dev *dev  = ((struct cx8802_fh *)priv)->dev;
	struct cx88_core  *core = dev->core;
	char name[32 + 2];

	FUNC3(name, sizeof(name), "%s/2", core->name);
	FUNC2("%s/2: ============  START LOG STATUS  ============\n",
		core->name);
	FUNC0(core, core, log_status);
	FUNC1(&dev->params, name);
	FUNC2("%s/2: =============  END LOG STATUS  =============\n",
		core->name);
	return 0;
}