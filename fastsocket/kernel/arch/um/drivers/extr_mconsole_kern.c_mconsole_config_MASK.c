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
struct TYPE_2__ {char* data; } ;
struct mc_request {TYPE_1__ request; } ;
struct mc_device {char* name; int (* config ) (char*,char**) ;int /*<<< orphan*/  get_config; } ;

/* Variables and functions */
 struct mc_device* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mc_request*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mc_request*,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 size_t FUNC4 (char*) ; 
 int FUNC5 (char*,char**) ; 

void FUNC6(struct mc_request *req)
{
	struct mc_device *dev;
	char *ptr = req->request.data, *name, *error_string = "";
	int err;

	ptr += FUNC4("config");
	ptr = FUNC3(ptr);
	dev = FUNC0(ptr);
	if (dev == NULL) {
		FUNC2(req, "Bad configuration option", 1, 0);
		return;
	}

	name = &ptr[FUNC4(dev->name)];
	ptr = name;
	while ((*ptr != '=') && (*ptr != '\0'))
		ptr++;

	if (*ptr == '=') {
		err = (*dev->config)(name, &error_string);
		FUNC2(req, error_string, err, 0);
	}
	else FUNC1(dev->get_config, req, name);
}