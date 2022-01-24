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
typedef  int uint8_t ;
struct seeprom_descriptor {int sd_MS; int sd_CK; int /*<<< orphan*/  sd_RDY; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seeprom_descriptor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seeprom_descriptor*,int) ; 

__attribute__((used)) static void
FUNC2(struct seeprom_descriptor *sd)
{
	uint8_t temp;

	temp = sd->sd_MS;
	FUNC1(sd, temp);
	FUNC0(sd, sd->sd_RDY);
	FUNC1(sd, temp ^ sd->sd_CK);
	FUNC0(sd, sd->sd_RDY);
	FUNC1(sd, temp);
	FUNC0(sd, sd->sd_RDY);
}