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
struct ds_trace {scalar_t__ ith; scalar_t__ end; scalar_t__ top; scalar_t__ begin; } ;
struct ds_context {unsigned char* ds; } ;
typedef  enum ds_qualifier { ____Placeholder_ds_qualifier } ds_qualifier ;

/* Variables and functions */
 int /*<<< orphan*/  ds_absolute_maximum ; 
 int /*<<< orphan*/  ds_buffer_base ; 
 int /*<<< orphan*/  ds_index ; 
 int /*<<< orphan*/  ds_interrupt_threshold ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC1(struct ds_context *context,
			    struct ds_trace *cfg, enum ds_qualifier qual)
{
	unsigned char *ds = context->ds;

	FUNC0(ds, qual, ds_buffer_base, (unsigned long)cfg->begin);
	FUNC0(ds, qual, ds_index, (unsigned long)cfg->top);
	FUNC0(ds, qual, ds_absolute_maximum, (unsigned long)cfg->end);
	FUNC0(ds, qual, ds_interrupt_threshold, (unsigned long)cfg->ith);
}