
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1_adapter {int fe; } ;


 int dvb_unregister_frontend (int ) ;

__attribute__((used)) static void pt1_cleanup_frontend(struct pt1_adapter *adap)
{
 dvb_unregister_frontend(adap->fe);
}
