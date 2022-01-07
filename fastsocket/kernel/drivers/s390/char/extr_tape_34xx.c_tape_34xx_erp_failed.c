
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {size_t op; } ;


 int DBF_EVENT (int,char*,int ,int) ;
 int * tape_op_verbose ;

__attribute__((used)) static inline int
tape_34xx_erp_failed(struct tape_request *request, int rc)
{
 DBF_EVENT(3, "Error recovery failed for %s (RC=%d)\n",
    tape_op_verbose[request->op], rc);
 return rc;
}
