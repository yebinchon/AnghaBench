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
struct splice_desc {int dummy; } ;
struct pipe_inode_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pipe_inode_info*,struct splice_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lo_splice_actor ; 

__attribute__((used)) static int
FUNC1(struct pipe_inode_info *pipe, struct splice_desc *sd)
{
	return FUNC0(pipe, sd, lo_splice_actor);
}