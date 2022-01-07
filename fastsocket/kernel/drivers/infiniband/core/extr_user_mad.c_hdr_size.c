
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_user_mad_hdr_old {int dummy; } ;
struct ib_user_mad_hdr {int dummy; } ;
struct ib_umad_file {scalar_t__ use_pkey_index; } ;



__attribute__((used)) static int hdr_size(struct ib_umad_file *file)
{
 return file->use_pkey_index ? sizeof (struct ib_user_mad_hdr) :
  sizeof (struct ib_user_mad_hdr_old);
}
