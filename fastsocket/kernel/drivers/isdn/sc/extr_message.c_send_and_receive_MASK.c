#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned char type; unsigned char class; unsigned char code; unsigned char phy_link_no; } ;
struct TYPE_3__ {int want_async_messages; int devicename; TYPE_2__ async_msg; } ;
typedef  int /*<<< orphan*/  RspMessage ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_1__** sc_adapter ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,unsigned int,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned int*) ; 

int FUNC5(int card,
		unsigned int procid, 
		unsigned char type,
		unsigned char class, 
		unsigned char code,
		unsigned char link,
	 	unsigned char data_len, 
		unsigned char *data, 
		RspMessage *mesgdata,
		int timeout) 
{
	int retval;
	int tries;

	if (!FUNC0(card)) {
		FUNC2("Invalid param: %d is not a valid card id\n", card);
		return -EINVAL;
	}

	sc_adapter[card]->want_async_messages = 1;
	retval = FUNC4(card, procid, type, class, code, link, 
			data_len, (unsigned int *) data);
  
	if (retval) {
		FUNC2("%s: SendMessage failed in SAR\n",
			sc_adapter[card]->devicename);
		sc_adapter[card]->want_async_messages = 0;
		return -EIO;
	}

	tries = 0;
	/* wait for the response */
	while (tries < timeout) {
		FUNC3(1);
		
		FUNC2("SAR waiting..\n");

		/*
		 * See if we got our message back
		 */
		if ((sc_adapter[card]->async_msg.type == type) &&
		    (sc_adapter[card]->async_msg.class == class) &&
		    (sc_adapter[card]->async_msg.code == code) &&
		    (sc_adapter[card]->async_msg.phy_link_no == link)) {

			/*
			 * Got it!
			 */
			FUNC2("%s: Got ASYNC message\n",
				sc_adapter[card]->devicename);
			FUNC1(mesgdata, &(sc_adapter[card]->async_msg),
				sizeof(RspMessage));
			sc_adapter[card]->want_async_messages = 0;
			return 0;
		}

   		tries++;
	}

	FUNC2("%s: SAR message timeout\n", sc_adapter[card]->devicename);
	sc_adapter[card]->want_async_messages = 0;
	return -ETIME;
}