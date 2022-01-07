
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int debug; int printdebug; struct st5481_adapter* userdata; int state; int * fsm; } ;
struct TYPE_8__ {TYPE_2__ fsm; } ;
struct TYPE_10__ {int debug; int printdebug; struct st5481_adapter* userdata; int state; int * fsm; } ;
struct TYPE_9__ {int ep; int * hisax_if; struct st5481_adapter* adapter; int counter; int packet_size; int num_packets; int bufsize; } ;
struct TYPE_6__ {int ifc; } ;
struct st5481_adapter {TYPE_3__ d_out; int timer; TYPE_5__ l1m; TYPE_4__ d_in; TYPE_1__ hisax_d_if; } ;


 int DBG (int,char*) ;
 int EP_D_IN ;
 int FsmInitTimer (TYPE_5__*,int *) ;
 int IN_D_COUNTER ;
 int MAX_DFRAME_LEN_L1 ;
 int NUM_ISO_PACKETS_D ;
 int SIZE_ISO_PACKETS_D_IN ;
 int ST_DOUT_NONE ;
 int ST_L1_F3 ;
 int USB_DIR_IN ;
 int dout_debug ;
 int dout_fsm ;
 int l1fsm ;
 int l1m_debug ;
 int st5481_debug ;
 int st5481_release_d_out (struct st5481_adapter*) ;
 int st5481_setup_d_out (struct st5481_adapter*) ;
 int st5481_setup_in (TYPE_4__*) ;

int st5481_setup_d(struct st5481_adapter *adapter)
{
 int retval;

 DBG(2,"");

 retval = st5481_setup_d_out(adapter);
 if (retval)
  goto err;
 adapter->d_in.bufsize = MAX_DFRAME_LEN_L1;
 adapter->d_in.num_packets = NUM_ISO_PACKETS_D;
 adapter->d_in.packet_size = SIZE_ISO_PACKETS_D_IN;
 adapter->d_in.ep = EP_D_IN | USB_DIR_IN;
 adapter->d_in.counter = IN_D_COUNTER;
 adapter->d_in.adapter = adapter;
 adapter->d_in.hisax_if = &adapter->hisax_d_if.ifc;
 retval = st5481_setup_in(&adapter->d_in);
 if (retval)
  goto err_d_out;

 adapter->l1m.fsm = &l1fsm;
 adapter->l1m.state = ST_L1_F3;
 adapter->l1m.debug = st5481_debug & 0x100;
 adapter->l1m.userdata = adapter;
 adapter->l1m.printdebug = l1m_debug;
 FsmInitTimer(&adapter->l1m, &adapter->timer);

 adapter->d_out.fsm.fsm = &dout_fsm;
 adapter->d_out.fsm.state = ST_DOUT_NONE;
 adapter->d_out.fsm.debug = st5481_debug & 0x100;
 adapter->d_out.fsm.userdata = adapter;
 adapter->d_out.fsm.printdebug = dout_debug;

 return 0;

 err_d_out:
 st5481_release_d_out(adapter);
 err:
 return retval;
}
