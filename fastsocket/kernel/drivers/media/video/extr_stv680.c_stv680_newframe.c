
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_stv {size_t scratch_use; scalar_t__ nullpackets; TYPE_2__* scratch; TYPE_1__* frame; int wq; scalar_t__ streaming; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {scalar_t__ grabstate; int curpix; } ;


 scalar_t__ BUFFER_BUSY ;
 scalar_t__ BUFFER_READY ;
 scalar_t__ BUFFER_UNUSED ;
 int EIO ;
 scalar_t__ FRAME_ERROR ;
 scalar_t__ FRAME_GRABBING ;
 scalar_t__ FRAME_READY ;
 int PDEBUG (int,char*) ;
 int STV680_MAX_ERRORS ;
 scalar_t__ STV680_MAX_NULLPACKETS ;
 size_t STV680_NUMSCRATCH ;
 int bayer_unshuffle (struct usb_stv*,TYPE_2__*) ;
 int stv680_start_stream (struct usb_stv*) ;
 int stv680_stop_stream (struct usb_stv*) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int stv680_newframe (struct usb_stv *stv680, int framenr)
{
 int errors = 0;

 while (stv680->streaming && (stv680->frame[framenr].grabstate == FRAME_READY || stv680->frame[framenr].grabstate == FRAME_GRABBING)) {
  if (!stv680->frame[framenr].curpix) {
   errors++;
  }
  wait_event_interruptible (stv680->wq, (stv680->scratch[stv680->scratch_use].state == BUFFER_READY));

  if (stv680->nullpackets > STV680_MAX_NULLPACKETS) {
   stv680->nullpackets = 0;
   PDEBUG (2, "STV(i): too many null length packets, restarting capture");
   stv680_stop_stream (stv680);
   stv680_start_stream (stv680);
  } else {
   if (stv680->scratch[stv680->scratch_use].state != BUFFER_READY) {
    stv680->frame[framenr].grabstate = FRAME_ERROR;
    PDEBUG (2, "STV(e): FRAME_ERROR in _newframe");
    return -EIO;
   }
   stv680->scratch[stv680->scratch_use].state = BUFFER_BUSY;

   bayer_unshuffle (stv680, &stv680->scratch[stv680->scratch_use]);

   stv680->scratch[stv680->scratch_use].state = BUFFER_UNUSED;
   stv680->scratch_use++;
   if (stv680->scratch_use >= STV680_NUMSCRATCH)
    stv680->scratch_use = 0;
   if (errors > STV680_MAX_ERRORS) {
    errors = 0;
    PDEBUG (2, "STV(i): too many errors, restarting capture");
    stv680_stop_stream (stv680);
    stv680_start_stream (stv680);
   }
  }
 }
 return 0;
}
