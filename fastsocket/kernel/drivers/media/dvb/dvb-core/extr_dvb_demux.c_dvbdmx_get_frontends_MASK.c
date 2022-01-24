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
struct list_head {int dummy; } ;
struct dvb_demux {struct list_head frontend_list; } ;
struct dmx_demux {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct list_head*) ; 

__attribute__((used)) static struct list_head *FUNC1(struct dmx_demux *demux)
{
	struct dvb_demux *dvbdemux = (struct dvb_demux *)demux;

	if (FUNC0(&dvbdemux->frontend_list))
		return NULL;

	return &dvbdemux->frontend_list;
}