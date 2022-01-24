#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tl_setup_get_version_qry {int dummy; } ;
struct TYPE_2__ {int length; } ;
struct ipw_setup_get_version_query_packet {TYPE_1__ header; } ;
struct ipw_hardware {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_SETUP_PROT ; 
 int /*<<< orphan*/  PRIO_SETUP ; 
 int /*<<< orphan*/  TL_PROTOCOLID_SETUP ; 
 int /*<<< orphan*/  TL_SETUP_SIGNO_GET_VERSION_QRY ; 
 struct ipw_setup_get_version_query_packet* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_hardware*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct ipw_hardware *hw)
{
	struct ipw_setup_get_version_query_packet *ver_packet;

	ver_packet = FUNC0(
			sizeof(struct ipw_setup_get_version_query_packet),
			ADDR_SETUP_PROT, TL_PROTOCOLID_SETUP,
			TL_SETUP_SIGNO_GET_VERSION_QRY);
	ver_packet->header.length = sizeof(struct tl_setup_get_version_qry);

	/*
	 * Response is handled in handle_received_SETUP_packet
	 */
	FUNC1(hw, PRIO_SETUP, &ver_packet->header);
}