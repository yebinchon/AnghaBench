
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG_ASS ;


 int dbg (int ,char*,char*) ;

__attribute__((used)) static void
fst_process_rx_status(int rx_status, char *name)
{
 switch (rx_status) {
 case 128:
  {



   break;
  }
 case 129:
  {
   dbg(DBG_ASS, "%s: Received packet dropped\n", name);
   break;
  }
 }
}
