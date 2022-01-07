
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_flags; } ;
typedef int ssize_t ;


 int QUEUE_FLAG_UNPRIV_SGIO ;
 int queue_var_show (int,char*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static ssize_t
queue_show_unpriv_sgio(struct request_queue *q, char *page)
{
 int bit;
 bit = test_bit(QUEUE_FLAG_UNPRIV_SGIO, &q->queue_flags);
 return queue_var_show(bit, page);
}
