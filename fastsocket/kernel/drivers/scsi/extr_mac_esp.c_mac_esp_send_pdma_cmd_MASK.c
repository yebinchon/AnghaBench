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
typedef  int u32 ;
struct mac_esp_priv {scalar_t__ error; } ;
struct esp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_CMD_FLUSH ; 
 int /*<<< orphan*/  ESP_TCLOW ; 
 int /*<<< orphan*/  ESP_TCMED ; 
 struct mac_esp_priv* FUNC0 (struct esp*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (struct esp*) ; 
 scalar_t__ FUNC7 (struct esp*) ; 
 int /*<<< orphan*/  FUNC8 (struct esp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct esp *esp, u32 addr, u32 esp_count,
				  u32 dma_count, int write, u8 cmd)
{
	struct mac_esp_priv *mep = FUNC0(esp);
	unsigned long flags;

	FUNC5(flags);

	mep->error = 0;

	if (!write)
		FUNC8(esp, ESP_CMD_FLUSH);

	FUNC3((esp_count >> 0) & 0xFF, ESP_TCLOW);
	FUNC3((esp_count >> 8) & 0xFF, ESP_TCMED);

	FUNC8(esp, cmd);

	do {
		unsigned int count32 = esp_count >> 5;
		unsigned int count2 = (esp_count & 0x1F) >> 1;
		unsigned int count1 = esp_count & 1;
		unsigned int start_addr = addr;

		if (FUNC6(esp))
			break;

		if (write) {
			FUNC1("%4@,%0@+");

			esp_count -= addr - start_addr;
		} else {
			unsigned int n;

			FUNC1("%0@+,%4@");

			if (FUNC7(esp))
				break;

			n = (FUNC2(ESP_TCMED) << 8) + FUNC2(ESP_TCLOW);
			addr = start_addr + esp_count - n;
			esp_count = n;
		}
	} while (esp_count);

	FUNC4(flags);
}