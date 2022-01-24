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
typedef  int /*<<< orphan*/  diva_strace_library_interface_t ;

/* Variables and functions */
 int /*<<< orphan*/  DLI_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,char const*,int) ; 

__attribute__((used)) static void FUNC1 (void* user_context,
                              diva_strace_library_interface_t* hLib,
                              int Adapter,
                              int error,
                              const char* file,
                              int line) {
	FUNC0 (0, DLI_ERR,
                             "Trace library error(%d) A(%d) %s %d", error, Adapter, file, line);
}