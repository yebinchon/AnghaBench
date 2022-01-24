#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_2__ {int n_namesz; int n_descsz; int /*<<< orphan*/  n_type; } ;
typedef  int /*<<< orphan*/  Elf64_Word ;
typedef  TYPE_1__ Elf64_Nhdr ;

/* Variables and functions */
 void* FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static void *FUNC4(void *buf, Elf64_Word type, void *desc, int d_len,
		     const char *name)
{
	Elf64_Nhdr *note;
	u64 len;

	note = (Elf64_Nhdr *)buf;
	note->n_namesz = FUNC3(name) + 1;
	note->n_descsz = d_len;
	note->n_type = type;
	len = sizeof(Elf64_Nhdr);

	FUNC1(buf + len, name, note->n_namesz);
	len = FUNC2(len + note->n_namesz, 4);

	FUNC1(buf + len, desc, note->n_descsz);
	len = FUNC2(len + note->n_descsz, 4);

	return FUNC0(buf, len);
}