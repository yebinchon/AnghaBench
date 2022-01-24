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
struct dm_space_map {int (* copy_root ) (struct dm_space_map*,void*,size_t) ;} ;

/* Variables and functions */
 int FUNC0 (struct dm_space_map*,void*,size_t) ; 

__attribute__((used)) static inline int FUNC1(struct dm_space_map *sm, void *copy_to_here_le, size_t len)
{
	return sm->copy_root(sm, copy_to_here_le, len);
}