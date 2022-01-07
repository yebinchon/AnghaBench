
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long REQUEST_LIST_SIZE ;

__attribute__((used)) static inline int zfcp_reqlist_hash(unsigned long req_id)
{
 return req_id % REQUEST_LIST_SIZE;
}
