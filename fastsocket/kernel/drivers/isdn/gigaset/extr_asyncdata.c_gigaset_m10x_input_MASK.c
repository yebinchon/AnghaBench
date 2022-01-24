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
struct inbuf_t {unsigned int head; unsigned int tail; unsigned char* data; int inputstate; TYPE_1__* bcs; struct cardstate* cs; } ;
struct cardstate {scalar_t__ mstate; int /*<<< orphan*/  dev; scalar_t__ dle; } ;
struct TYPE_2__ {scalar_t__ proto2; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_INTR ; 
 unsigned char DLE_FLAG ; 
 int INS_DLE_char ; 
 int INS_DLE_command ; 
 int INS_command ; 
 scalar_t__ ISDN_PROTO_L2_HDLC ; 
 scalar_t__ MS_LOCKED ; 
 unsigned int RBUFSIZE ; 
 int FUNC0 (unsigned char,unsigned char*,unsigned int,struct inbuf_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int FUNC4 (unsigned char,unsigned char*,unsigned int,struct inbuf_t*) ; 
 int FUNC5 (unsigned char,unsigned char*,unsigned int,struct inbuf_t*) ; 
 int FUNC6 (unsigned char*,unsigned int,struct inbuf_t*) ; 

void FUNC7(struct inbuf_t *inbuf)
{
	struct cardstate *cs;
	unsigned tail, head, numbytes;
	unsigned char *src, c;
	int procbytes;

	head = inbuf->head;
	tail = inbuf->tail;
	FUNC3(DEBUG_INTR, "buffer state: %u -> %u", head, tail);

	if (head != tail) {
		cs = inbuf->cs;
		src = inbuf->data + head;
		numbytes = (head > tail ? RBUFSIZE : tail) - head;
		FUNC3(DEBUG_INTR, "processing %u bytes", numbytes);

		while (numbytes) {
			if (cs->mstate == MS_LOCKED) {
				procbytes = FUNC6(src, numbytes, inbuf);
				src += procbytes;
				numbytes -= procbytes;
			} else {
				c = *src++;
				--numbytes;
				if (c == DLE_FLAG && (cs->dle ||
				    inbuf->inputstate & INS_DLE_command)) {
					if (!(inbuf->inputstate & INS_DLE_char)) {
						inbuf->inputstate |= INS_DLE_char;
						goto nextbyte;
					}
					/* <DLE> <DLE> => <DLE> in data stream */
					inbuf->inputstate &= ~INS_DLE_char;
				}

				if (!(inbuf->inputstate & INS_DLE_char)) {

					/* FIXME use function pointers?  */
					if (inbuf->inputstate & INS_command)
						procbytes = FUNC0(c, src, numbytes, inbuf);
					else if (inbuf->bcs->proto2 == ISDN_PROTO_L2_HDLC)
						procbytes = FUNC4(c, src, numbytes, inbuf);
					else
						procbytes = FUNC5(c, src, numbytes, inbuf);

					src += procbytes;
					numbytes -= procbytes;
				} else {  /* DLE char */
					inbuf->inputstate &= ~INS_DLE_char;
					switch (c) {
					case 'X': /*begin of command*/
						if (inbuf->inputstate & INS_command)
							FUNC2(cs->dev,
					"received <DLE> 'X' in command mode\n");
						inbuf->inputstate |=
							INS_command | INS_DLE_command;
						break;
					case '.': /*end of command*/
						if (!(inbuf->inputstate & INS_command))
							FUNC2(cs->dev,
					"received <DLE> '.' in hdlc mode\n");
						inbuf->inputstate &= cs->dle ?
							~(INS_DLE_command|INS_command)
							: ~INS_DLE_command;
						break;
					//case DLE_FLAG: /*DLE_FLAG in data stream*/ /* schon oben behandelt! */
					default:
						FUNC1(cs->dev,
						      "received 0x10 0x%02x!\n",
							(int) c);
						/* FIXME: reset driver?? */
					}
				}
			}
nextbyte:
			if (!numbytes) {
				/* end of buffer, check for wrap */
				if (head > tail) {
					head = 0;
					src = inbuf->data;
					numbytes = tail;
				} else {
					head = tail;
					break;
				}
			}
		}

		FUNC3(DEBUG_INTR, "setting head to %u", head);
		inbuf->head = head;
	}
}