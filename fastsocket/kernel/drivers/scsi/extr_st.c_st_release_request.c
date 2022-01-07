
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_request {int dummy; } ;


 int kfree (struct st_request*) ;

__attribute__((used)) static void st_release_request(struct st_request *streq)
{
 kfree(streq);
}
