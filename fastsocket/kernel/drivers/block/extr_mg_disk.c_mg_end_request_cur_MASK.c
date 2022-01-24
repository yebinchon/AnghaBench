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
struct mg_host {int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mg_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct mg_host *host, int err)
{
	return FUNC1(host, err, FUNC0(host->req));
}