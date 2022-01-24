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
struct scsi_device {struct aic_dev_data* hostdata; } ;
struct aic_dev_data {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aic_dev_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct scsi_device *SDptr)
{
  struct aic_dev_data *aic_dev = SDptr->hostdata;

  FUNC1(&aic_dev->list);
  SDptr->hostdata = NULL;
  FUNC0(aic_dev);
  return;
}