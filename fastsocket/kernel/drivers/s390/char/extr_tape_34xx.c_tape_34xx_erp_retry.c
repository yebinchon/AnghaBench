
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {size_t op; } ;


 int DBF_EVENT (int,char*,int ) ;
 int TAPE_IO_RETRY ;
 int * tape_op_verbose ;

__attribute__((used)) static inline int
tape_34xx_erp_retry(struct tape_request *request)
{
 DBF_EVENT(3, "xerp retr %s\n", tape_op_verbose[request->op]);
 return TAPE_IO_RETRY;
}
