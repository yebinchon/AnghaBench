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
struct zr36050 {int /*<<< orphan*/  num; int /*<<< orphan*/  name; } ;
struct videocodec {struct zr36050* data; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zr36050*) ; 
 int /*<<< orphan*/  zr36050_codecs ; 

__attribute__((used)) static int
FUNC2 (struct videocodec *codec)
{
	struct zr36050 *ptr = codec->data;

	if (ptr) {
		/* do wee need some codec deinit here, too ???? */

		FUNC0(1, "%s: finished codec #%d\n", ptr->name,
			ptr->num);
		FUNC1(ptr);
		codec->data = NULL;

		zr36050_codecs--;
		return 0;
	}

	return -EFAULT;
}