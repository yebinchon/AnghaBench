
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int ahash_no_export(struct ahash_request *req, void *out)
{
 return -ENOSYS;
}
