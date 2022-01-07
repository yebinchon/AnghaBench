
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_data {int* nr_queued; } ;



__attribute__((used)) static inline int total_nr_queued(struct throtl_data *td)
{
 return (td->nr_queued[0] + td->nr_queued[1]);
}
