
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct microcode_header_intel {int pf; int sig; } ;
struct extended_sigtable {int count; } ;
struct extended_signature {int pf; int sig; } ;
struct cpu_signature {int dummy; } ;


 int EXT_HEADER_SIZE ;
 unsigned long MC_HEADER_SIZE ;
 long get_datasize (struct microcode_header_intel*) ;
 unsigned long get_totalsize (struct microcode_header_intel*) ;
 scalar_t__ update_match_cpu (struct cpu_signature*,int ,int ) ;
 int update_match_revision (struct microcode_header_intel*,int) ;

__attribute__((used)) static int
get_matching_microcode(struct cpu_signature *cpu_sig, void *mc, int rev)
{
 struct microcode_header_intel *mc_header = mc;
 struct extended_sigtable *ext_header;
 unsigned long total_size = get_totalsize(mc_header);
 int ext_sigcount, i;
 struct extended_signature *ext_sig;

 if (!update_match_revision(mc_header, rev))
  return 0;

 if (update_match_cpu(cpu_sig, mc_header->sig, mc_header->pf))
  return 1;


 if (total_size <= get_datasize(mc_header) + MC_HEADER_SIZE)
  return 0;

 ext_header = mc + get_datasize(mc_header) + MC_HEADER_SIZE;
 ext_sigcount = ext_header->count;
 ext_sig = (void *)ext_header + EXT_HEADER_SIZE;

 for (i = 0; i < ext_sigcount; i++) {
  if (update_match_cpu(cpu_sig, ext_sig->sig, ext_sig->pf))
   return 1;
  ext_sig++;
 }
 return 0;
}
