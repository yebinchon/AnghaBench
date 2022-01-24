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
struct pcbit_dev {scalar_t__ writeptr; scalar_t__ sh_mem; } ;

/* Variables and functions */
 scalar_t__ BANKLEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ void FUNC1(struct pcbit_dev *dev, unsigned char dt)
{
  FUNC0(dt, dev->writeptr++);
  if (dev->writeptr == dev->sh_mem + BANKLEN)
    dev->writeptr = dev->sh_mem;
}