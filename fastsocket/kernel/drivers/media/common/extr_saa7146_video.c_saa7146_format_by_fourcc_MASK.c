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
struct saa7146_format {int pixelformat; } ;
struct saa7146_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int NUM_FORMATS ; 
 struct saa7146_format* formats ; 

struct saa7146_format* FUNC1(struct saa7146_dev *dev, int fourcc)
{
	int i, j = NUM_FORMATS;

	for (i = 0; i < j; i++) {
		if (formats[i].pixelformat == fourcc) {
			return formats+i;
		}
	}

	FUNC0(("unknown pixelformat:'%4.4s'\n",(char *)&fourcc));
	return NULL;
}