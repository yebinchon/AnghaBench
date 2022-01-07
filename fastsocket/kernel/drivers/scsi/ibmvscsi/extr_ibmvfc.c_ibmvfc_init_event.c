
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int format; } ;
struct ibmvfc_event {void (* done ) (struct ibmvfc_event*) ;int * eh_comp; TYPE_1__ crq; int * sync_iu; int * cmnd; } ;



__attribute__((used)) static void ibmvfc_init_event(struct ibmvfc_event *evt,
         void (*done) (struct ibmvfc_event *), u8 format)
{
 evt->cmnd = ((void*)0);
 evt->sync_iu = ((void*)0);
 evt->crq.format = format;
 evt->done = done;
 evt->eh_comp = ((void*)0);
}
