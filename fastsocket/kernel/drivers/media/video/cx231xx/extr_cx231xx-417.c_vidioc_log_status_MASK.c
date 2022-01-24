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
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {char* name; int /*<<< orphan*/  mpeg_params; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  log_status ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv)
{
	struct cx231xx_fh  *fh  = priv;
	struct cx231xx *dev = fh->dev;
	char name[32 + 2];

	FUNC3(name, sizeof(name), "%s/2", dev->name);
	FUNC2(3,
		"%s/2: ============  START LOG STATUS  ============\n",
	       dev->name);
	FUNC0(dev, core, log_status);
	FUNC1(&dev->mpeg_params, name);
	FUNC2(3,
		"%s/2: =============  END LOG STATUS  =============\n",
	       dev->name);
	return 0;
}