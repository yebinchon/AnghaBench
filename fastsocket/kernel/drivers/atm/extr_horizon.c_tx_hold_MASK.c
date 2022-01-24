#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_queue; } ;
typedef  TYPE_1__ hrz_dev ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_1__*,...) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_busy ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4 (hrz_dev * dev) {
  FUNC0 (DBG_TX, "sleeping at tx lock %p %lu", dev, dev->flags);
  FUNC3(dev->tx_queue, (!FUNC2(tx_busy, &dev->flags)));
  FUNC0 (DBG_TX, "woken at tx lock %p %lu", dev, dev->flags);
  if (FUNC1 (current))
    return -1;
  FUNC0 (DBG_TX, "set tx_busy for dev %p", dev);
  return 0;
}