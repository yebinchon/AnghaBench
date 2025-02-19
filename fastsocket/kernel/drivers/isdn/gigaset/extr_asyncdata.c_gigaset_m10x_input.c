
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inbuf_t {unsigned int head; unsigned int tail; unsigned char* data; int inputstate; TYPE_1__* bcs; struct cardstate* cs; } ;
struct cardstate {scalar_t__ mstate; int dev; scalar_t__ dle; } ;
struct TYPE_2__ {scalar_t__ proto2; } ;


 int DEBUG_INTR ;
 unsigned char DLE_FLAG ;
 int INS_DLE_char ;
 int INS_DLE_command ;
 int INS_command ;
 scalar_t__ ISDN_PROTO_L2_HDLC ;
 scalar_t__ MS_LOCKED ;
 unsigned int RBUFSIZE ;
 int cmd_loop (unsigned char,unsigned char*,unsigned int,struct inbuf_t*) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int gig_dbg (int ,char*,unsigned int,...) ;
 int hdlc_loop (unsigned char,unsigned char*,unsigned int,struct inbuf_t*) ;
 int iraw_loop (unsigned char,unsigned char*,unsigned int,struct inbuf_t*) ;
 int lock_loop (unsigned char*,unsigned int,struct inbuf_t*) ;

void gigaset_m10x_input(struct inbuf_t *inbuf)
{
 struct cardstate *cs;
 unsigned tail, head, numbytes;
 unsigned char *src, c;
 int procbytes;

 head = inbuf->head;
 tail = inbuf->tail;
 gig_dbg(DEBUG_INTR, "buffer state: %u -> %u", head, tail);

 if (head != tail) {
  cs = inbuf->cs;
  src = inbuf->data + head;
  numbytes = (head > tail ? RBUFSIZE : tail) - head;
  gig_dbg(DEBUG_INTR, "processing %u bytes", numbytes);

  while (numbytes) {
   if (cs->mstate == MS_LOCKED) {
    procbytes = lock_loop(src, numbytes, inbuf);
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

     inbuf->inputstate &= ~INS_DLE_char;
    }

    if (!(inbuf->inputstate & INS_DLE_char)) {


     if (inbuf->inputstate & INS_command)
      procbytes = cmd_loop(c, src, numbytes, inbuf);
     else if (inbuf->bcs->proto2 == ISDN_PROTO_L2_HDLC)
      procbytes = hdlc_loop(c, src, numbytes, inbuf);
     else
      procbytes = iraw_loop(c, src, numbytes, inbuf);

     src += procbytes;
     numbytes -= procbytes;
    } else {
     inbuf->inputstate &= ~INS_DLE_char;
     switch (c) {
     case 'X':
      if (inbuf->inputstate & INS_command)
       dev_warn(cs->dev,
     "received <DLE> 'X' in command mode\n");
      inbuf->inputstate |=
       INS_command | INS_DLE_command;
      break;
     case '.':
      if (!(inbuf->inputstate & INS_command))
       dev_warn(cs->dev,
     "received <DLE> '.' in hdlc mode\n");
      inbuf->inputstate &= cs->dle ?
       ~(INS_DLE_command|INS_command)
       : ~INS_DLE_command;
      break;

     default:
      dev_err(cs->dev,
            "received 0x10 0x%02x!\n",
       (int) c);

     }
    }
   }
nextbyte:
   if (!numbytes) {

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

  gig_dbg(DEBUG_INTR, "setting head to %u", head);
  inbuf->head = head;
 }
}
