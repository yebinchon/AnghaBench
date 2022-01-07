
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct clone_info {int dummy; } ;
typedef int sector_t ;


 int __issue_target_request (struct clone_info*,struct dm_target*,unsigned int,int ) ;

__attribute__((used)) static void __issue_target_requests(struct clone_info *ci, struct dm_target *ti,
        unsigned num_requests, sector_t len)
{
 unsigned request_nr;

 for (request_nr = 0; request_nr < num_requests; request_nr++)
  __issue_target_request(ci, ti, request_nr, len);
}
