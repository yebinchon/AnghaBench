
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osst_request {int dummy; } ;


 int kfree (struct osst_request*) ;

__attribute__((used)) static void osst_release_request(struct osst_request *streq)
{
 kfree(streq);
}
