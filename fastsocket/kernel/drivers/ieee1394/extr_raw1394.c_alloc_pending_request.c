
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_request {int dummy; } ;


 int GFP_KERNEL ;
 struct pending_request* __alloc_pending_request (int ) ;

__attribute__((used)) static inline struct pending_request *alloc_pending_request(void)
{
 return __alloc_pending_request(GFP_KERNEL);
}
