
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int GRU_EXC_STR_SIZE ;
 int gru_get_cb_exception_detail_str (int,void*,char*,int) ;
 int panic (char*,char*,int ) ;

void gru_abort(int ret, void *cb, char *str)
{
 char buf[GRU_EXC_STR_SIZE];

 panic("GRU FATAL ERROR: %s - %s\n", str,
       gru_get_cb_exception_detail_str(ret, cb, buf, sizeof(buf)));
}
