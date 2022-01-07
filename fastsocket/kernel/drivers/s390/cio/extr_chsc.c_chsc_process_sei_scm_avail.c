
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chsc_sei_area {int rs; } ;


 int CIO_CRW_EVENT (int,char*,...) ;
 int scm_process_availability_information () ;

__attribute__((used)) static void chsc_process_sei_scm_avail(struct chsc_sei_area *sei_area)
{
 int ret;

 CIO_CRW_EVENT(4, "chsc: scm available information\n");
 if (sei_area->rs != 7)
  return;

 ret = scm_process_availability_information();
 if (ret)
  CIO_CRW_EVENT(0, "chsc: process availability information"
         " failed (rc=%d).\n", ret);
}
