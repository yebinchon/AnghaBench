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
struct nv50_i2c_priv {int dummy; } ;
struct nv50_i2c_port {int /*<<< orphan*/  addr; } ;
struct nouveau_i2c_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ engine; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct nouveau_i2c_port*) ; 
 int FUNC1 (struct nv50_i2c_priv*,int /*<<< orphan*/ ) ; 

int
FUNC2(struct nouveau_i2c_port *base)
{
	struct nv50_i2c_priv *priv = (void *)FUNC0(base)->engine;
	struct nv50_i2c_port *port = (void *)base;
	return !!(FUNC1(priv, port->addr) & 0x00000002);
}