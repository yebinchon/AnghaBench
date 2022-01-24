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
typedef  int /*<<< orphan*/  u8 ;
struct mon_private {int /*<<< orphan*/  iucv_connected; } ;
struct iucv_path {struct mon_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mon_conn_wait_queue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct iucv_path *path, u8 ipuser[16])
{
	struct mon_private *monpriv = path->private;

	FUNC0(&monpriv->iucv_connected, 1);
	FUNC1(&mon_conn_wait_queue);
}