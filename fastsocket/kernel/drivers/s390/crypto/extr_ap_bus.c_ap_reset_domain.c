
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AP_DEVICES ;
 int AP_MKQID (int,int) ;
 int ap_domain_index ;
 int ap_reset_queue (int ) ;

__attribute__((used)) static void ap_reset_domain(void)
{
 int i;

 if (ap_domain_index != -1)
  for (i = 0; i < AP_DEVICES; i++)
   ap_reset_queue(AP_MKQID(i, ap_domain_index));
}
