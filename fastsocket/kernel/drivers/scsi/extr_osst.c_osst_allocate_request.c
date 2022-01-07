
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osst_request {int dummy; } ;


 int GFP_KERNEL ;
 struct osst_request* kzalloc (int,int ) ;

__attribute__((used)) static struct osst_request *osst_allocate_request(void)
{
 return kzalloc(sizeof(struct osst_request), GFP_KERNEL);
}
