
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_dvb_adapter {int * fe; } ;


 int dvb_frontend_detach (int *) ;
 int dvb_unregister_frontend (int *) ;

__attribute__((used)) static int pvr2_dvb_frontend_exit(struct pvr2_dvb_adapter *adap)
{
 if (adap->fe != ((void*)0)) {
  dvb_unregister_frontend(adap->fe);
  dvb_frontend_detach(adap->fe);
 }
 return 0;
}
