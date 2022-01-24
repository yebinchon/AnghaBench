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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  add_keyblock_key ; 
 int /*<<< orphan*/  add_keyblock_uid ; 
 int FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(const void *buffer, size_t size)
{
    FUNC1("Loading keyring\n");

    return FUNC0((const uint8_t *) buffer,
			       size,
			       NULL,
			       add_keyblock_key,
			       add_keyblock_uid,
			       NULL);
}