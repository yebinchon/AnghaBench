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
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int dummy; } ;
struct port {int dummy; } ;

/* Variables and functions */
 int EPIPE ; 
 int FUNC0 (struct port*,struct scatterlist*,int,int,void*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 struct port* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,char const*,int) ; 
 scalar_t__ FUNC4 (int (*) (int /*<<< orphan*/ ,char const*,int)) ; 

__attribute__((used)) static int FUNC5(u32 vtermno, const char *buf, int count)
{
	struct port *port;
	struct scatterlist sg[1];

	if (FUNC4(early_put_chars))
		return FUNC1(vtermno, buf, count);

	port = FUNC2(vtermno);
	if (!port)
		return -EPIPE;

	FUNC3(sg, buf, count);
	return FUNC0(port, sg, 1, count, (void *)buf, false);
}