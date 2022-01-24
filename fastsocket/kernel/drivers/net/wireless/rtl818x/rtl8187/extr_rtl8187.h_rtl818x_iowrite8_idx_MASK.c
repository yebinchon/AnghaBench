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
typedef  int /*<<< orphan*/  val ;
typedef  int u8 ;
struct rtl8187_priv {int /*<<< orphan*/  io_mutex; TYPE_1__* io_dmabuf; int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int bits8; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  RTL8187_REQT_WRITE ; 
 int /*<<< orphan*/  RTL8187_REQ_SET_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct rtl8187_priv *priv,
					u8 *addr, u8 val, u8 idx)
{
	FUNC0(&priv->io_mutex);

	priv->io_dmabuf->bits8 = val;
	FUNC2(priv->udev, FUNC3(priv->udev, 0),
			RTL8187_REQ_SET_REG, RTL8187_REQT_WRITE,
			(unsigned long)addr, idx & 0x03,
			&priv->io_dmabuf->bits8, sizeof(val), HZ / 2);

	FUNC1(&priv->io_mutex);
}