
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int diva_man_var_header_t ;
typedef scalar_t__ byte ;


 scalar_t__ ESC ;

__attribute__((used)) static diva_man_var_header_t* get_next_var (diva_man_var_header_t* pVar) {
 byte* msg = (byte*)pVar;
 byte* start;
 int msg_length;

 if (*msg != ESC) return ((void*)0);

 start = msg + 2;
 msg_length = *(msg+1);
 msg = (start+msg_length);

 if (*msg != ESC) return ((void*)0);

 return ((diva_man_var_header_t*)msg);
}
