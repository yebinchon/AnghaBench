
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ep; int * hisax_if; int adapter; int counter; int packet_size; int num_packets; int bufsize; } ;
struct TYPE_3__ {int ifc; } ;
struct st5481_bcs {TYPE_2__ b_in; TYPE_1__ b_if; int adapter; scalar_t__ channel; } ;


 int DBG (int,char*) ;
 int EP_B1_IN ;
 int EP_B2_IN ;
 int HSCX_BUFMAX ;
 int IN_B1_COUNTER ;
 int IN_B2_COUNTER ;
 int NUM_ISO_PACKETS_B ;
 int SIZE_ISO_PACKETS_B_IN ;
 int USB_DIR_IN ;
 int st5481_release_b_out (struct st5481_bcs*) ;
 int st5481_setup_b_out (struct st5481_bcs*) ;
 int st5481_setup_in (TYPE_2__*) ;

int st5481_setup_b(struct st5481_bcs *bcs)
{
 int retval;

 DBG(4,"");

 retval = st5481_setup_b_out(bcs);
 if (retval)
  goto err;
 bcs->b_in.bufsize = HSCX_BUFMAX;
 bcs->b_in.num_packets = NUM_ISO_PACKETS_B;
 bcs->b_in.packet_size = SIZE_ISO_PACKETS_B_IN;
 bcs->b_in.ep = (bcs->channel ? EP_B2_IN : EP_B1_IN) | USB_DIR_IN;
 bcs->b_in.counter = bcs->channel ? IN_B2_COUNTER : IN_B1_COUNTER;
 bcs->b_in.adapter = bcs->adapter;
 bcs->b_in.hisax_if = &bcs->b_if.ifc;
 retval = st5481_setup_in(&bcs->b_in);
 if (retval)
  goto err_b_out;


 return 0;

 err_b_out:
 st5481_release_b_out(bcs);
 err:
 return retval;
}
