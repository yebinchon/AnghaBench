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
typedef  scalar_t__ v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct tvp5150 {scalar_t__ norm; } ;

/* Variables and functions */
 struct tvp5150* FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct v4l2_subdev*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, v4l2_std_id std)
{
	struct tvp5150 *decoder = FUNC0(sd);

	if (decoder->norm == std)
		return 0;

	return FUNC1(sd, std);
}