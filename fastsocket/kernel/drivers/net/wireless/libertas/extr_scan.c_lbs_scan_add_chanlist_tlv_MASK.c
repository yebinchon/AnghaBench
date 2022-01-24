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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {void* len; void* type; } ;
struct mrvl_ie_chanlist_param_set {TYPE_1__ header; int /*<<< orphan*/  chanscanparam; } ;
struct chanscanparamset {int dummy; } ;

/* Variables and functions */
 size_t TLV_TYPE_CHANLIST ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct chanscanparamset*,size_t) ; 

__attribute__((used)) static int FUNC2(uint8_t *tlv,
				     struct chanscanparamset *chan_list,
				     int chan_count)
{
	size_t size = sizeof(struct chanscanparamset) *chan_count;
	struct mrvl_ie_chanlist_param_set *chan_tlv = (void *)tlv;

	chan_tlv->header.type = FUNC0(TLV_TYPE_CHANLIST);
	FUNC1(chan_tlv->chanscanparam, chan_list, size);
	chan_tlv->header.len = FUNC0(size);
	return sizeof(chan_tlv->header) + size;
}