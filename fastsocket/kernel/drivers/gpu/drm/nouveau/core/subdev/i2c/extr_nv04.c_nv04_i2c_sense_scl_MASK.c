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
struct nv04_i2c_priv {int dummy; } ;
struct nv04_i2c_port {int /*<<< orphan*/  sense; } ;
struct nouveau_i2c_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ engine; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct nouveau_i2c_port*) ; 
 int FUNC1 (struct nv04_i2c_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct nouveau_i2c_port *base)
{
	struct nv04_i2c_priv *priv = (void *)FUNC0(base)->engine;
	struct nv04_i2c_port *port = (void *)base;
	return !!(FUNC1(priv, 0, port->sense) & 0x04);
}