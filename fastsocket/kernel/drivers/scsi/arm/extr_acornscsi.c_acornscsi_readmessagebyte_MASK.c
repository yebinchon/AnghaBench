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
typedef  int /*<<< orphan*/  AS_Host ;

/* Variables and functions */
 int /*<<< orphan*/  ASR_DBR ; 
 int /*<<< orphan*/  ASR_INT ; 
 int CMND_SBT ; 
 int CMND_XFERINFO ; 
 int /*<<< orphan*/  SBIC_DATA ; 
 int /*<<< orphan*/  SBIC_SSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
unsigned char FUNC3(AS_Host *host)
{
    unsigned char message;

    FUNC0(host, CMND_XFERINFO | CMND_SBT);

    FUNC1(host, ASR_DBR, ASR_DBR, 1000, "for message byte");

    message = FUNC2(host, SBIC_DATA);

    /* wait for MSGIN-XFER-PAUSED */
    FUNC1(host, ASR_INT, ASR_INT, 1000, "for interrupt after message byte");

    FUNC2(host, SBIC_SSR);

    return message;
}