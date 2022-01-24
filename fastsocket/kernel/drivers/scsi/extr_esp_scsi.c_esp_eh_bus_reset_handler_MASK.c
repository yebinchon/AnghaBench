#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_2__* device; } ;
struct esp {TYPE_1__* host; struct completion* eh_reset; int /*<<< orphan*/  flags; } ;
struct completion {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_CMD_RS ; 
 int /*<<< orphan*/  ESP_FLAG_RESETTING ; 
 int FAILED ; 
 int HZ ; 
 int SUCCESS ; 
 int /*<<< orphan*/  esp_bus_reset_settle ; 
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 
 int /*<<< orphan*/  FUNC1 (struct esp*,int /*<<< orphan*/ ) ; 
 struct esp* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct completion*,int) ; 

__attribute__((used)) static int FUNC7(struct scsi_cmnd *cmd)
{
	struct esp *esp = FUNC2(cmd->device->host);
	struct completion eh_reset;
	unsigned long flags;

	FUNC0(&eh_reset);

	FUNC3(esp->host->host_lock, flags);

	esp->eh_reset = &eh_reset;

	/* XXX This is too simple... We should add lots of
	 * XXX checks here so that if we find that the chip is
	 * XXX very wedged we return failure immediately so
	 * XXX that we can perform a full chip reset.
	 */
	esp->flags |= ESP_FLAG_RESETTING;
	FUNC1(esp, ESP_CMD_RS);

	FUNC4(esp->host->host_lock, flags);

	FUNC5(esp_bus_reset_settle);

	if (!FUNC6(&eh_reset, 5 * HZ)) {
		FUNC3(esp->host->host_lock, flags);
		esp->eh_reset = NULL;
		FUNC4(esp->host->host_lock, flags);

		return FAILED;
	}

	return SUCCESS;
}