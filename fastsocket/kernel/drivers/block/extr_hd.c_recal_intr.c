
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_status () ;
 int hd_request () ;
 int last_req ;
 int read_timer () ;

__attribute__((used)) static void recal_intr(void)
{
 check_status();



 hd_request();
}
