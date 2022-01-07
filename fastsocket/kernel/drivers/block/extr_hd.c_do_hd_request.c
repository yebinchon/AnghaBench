
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int hd_request () ;

__attribute__((used)) static void do_hd_request(struct request_queue *q)
{
 hd_request();
}
