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
struct tty_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ SCLP_TTY_BUF_SIZE ; 
 unsigned char* sclp_tty_chars ; 
 scalar_t__ sclp_tty_chars_count ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct tty_struct *tty, unsigned char ch)
{
	sclp_tty_chars[sclp_tty_chars_count++] = ch;
	if (ch == '\n' || sclp_tty_chars_count >= SCLP_TTY_BUF_SIZE) {
		FUNC0(sclp_tty_chars, sclp_tty_chars_count, 0);
		sclp_tty_chars_count = 0;
	}
	return 1;
}