
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int timeout; int format; } ;
struct srp_event_struct {void (* done ) (struct srp_event_struct*) ;TYPE_1__ crq; int * sync_srp; int * cmnd_done; int * cmnd; } ;



__attribute__((used)) static void init_event_struct(struct srp_event_struct *evt_struct,
         void (*done) (struct srp_event_struct *),
         u8 format,
         int timeout)
{
 evt_struct->cmnd = ((void*)0);
 evt_struct->cmnd_done = ((void*)0);
 evt_struct->sync_srp = ((void*)0);
 evt_struct->crq.format = format;
 evt_struct->crq.timeout = timeout;
 evt_struct->done = done;
}
