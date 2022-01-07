
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AP_DEVICES ;
 int AP_DOMAINS ;
 int AP_MKQID (int,int) ;
 int ap_reset_queue (int ) ;

__attribute__((used)) static void ap_reset_all(void)
{
 int i, j;

 for (i = 0; i < AP_DOMAINS; i++)
  for (j = 0; j < AP_DEVICES; j++)
   ap_reset_queue(AP_MKQID(j, i));
}
