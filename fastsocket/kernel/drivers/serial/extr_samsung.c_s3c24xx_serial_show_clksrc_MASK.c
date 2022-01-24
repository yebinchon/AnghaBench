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
struct uart_port {int dummy; } ;
struct s3c24xx_uart_port {TYPE_1__* clksrc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct uart_port* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 struct s3c24xx_uart_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					  struct device_attribute *attr,
					  char *buf)
{
	struct uart_port *port = FUNC0(dev);
	struct s3c24xx_uart_port *ourport = FUNC2(port);

	return FUNC1(buf, PAGE_SIZE, "* %s\n", ourport->clksrc->name);
}