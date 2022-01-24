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
struct firmware_priv {int /*<<< orphan*/  completion; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_STATUS_ABORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(struct firmware_priv *fw_priv)
{
	FUNC1(FW_STATUS_ABORT, &fw_priv->status);
	FUNC2();
	FUNC0(&fw_priv->completion);
}