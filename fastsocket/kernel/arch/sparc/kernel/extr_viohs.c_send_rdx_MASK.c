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
struct vio_rdx {int /*<<< orphan*/  tag; } ;
struct vio_driver_state {int dummy; } ;
typedef  int /*<<< orphan*/  pkt ;

/* Variables and functions */
 int /*<<< orphan*/  HS ; 
 int /*<<< orphan*/  VIO_RDX ; 
 int /*<<< orphan*/  VIO_SUBTYPE_INFO ; 
 int /*<<< orphan*/  VIO_TYPE_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vio_rdx*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct vio_driver_state*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct vio_driver_state *vio)
{
	struct vio_rdx pkt;

	FUNC1(&pkt, 0, sizeof(pkt));

	FUNC0(&pkt.tag, VIO_TYPE_CTRL, VIO_SUBTYPE_INFO, VIO_RDX);

	FUNC3(HS, "SEND RDX INFO\n");

	return FUNC2(vio, &pkt.tag, sizeof(pkt));
}