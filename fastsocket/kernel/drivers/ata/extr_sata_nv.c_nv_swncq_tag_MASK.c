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
typedef  int u32 ;
struct nv_swncq_port_priv {int /*<<< orphan*/  tag_block; } ;
struct ata_port {struct nv_swncq_port_priv* private_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC1(struct ata_port *ap)
{
	struct nv_swncq_port_priv *pp = ap->private_data;
	u32 tag;

	tag = FUNC0(pp->tag_block) >> 2;
	return (tag & 0x1f);
}