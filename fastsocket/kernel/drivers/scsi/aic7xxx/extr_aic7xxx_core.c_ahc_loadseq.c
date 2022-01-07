
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
struct patch {int dummy; } ;
struct cs {int end; int begin; } ;
struct ahc_softc {int pci_cachesize; int instruction_ram_size; int num_critical_sections; int features; int bugs; int flags; int * critical_sections; int * targetcmds; } ;
struct ahc_dma_seg {int dummy; } ;
typedef int seqprog ;
typedef int end_set ;
typedef int begin_set ;
struct TYPE_2__ {int end; int begin; } ;


 size_t CACHESIZE_MASK ;
 int ENOMEM ;
 int FAILDIS ;
 int FALSE ;
 int FASTMODE ;
 size_t INVERTED_CACHESIZE_MASK ;
 int LOADRAM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int PERRORDIS ;
 size_t QINFIFO_OFFSET ;
 size_t QOUTFIFO_OFFSET ;
 int SEQADDR0 ;
 int SEQADDR1 ;
 int SEQCTL ;
 size_t SG_PREFETCH_ADDR_MASK ;
 size_t SG_PREFETCH_ALIGN_MASK ;
 size_t SG_PREFETCH_CNT ;
 int TRUE ;
 scalar_t__ ahc_check_patch (struct ahc_softc*,struct patch const**,int,int*) ;
 int ahc_download_instr (struct ahc_softc*,int,int*) ;
 char* ahc_name (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 scalar_t__ bootverbose ;
 TYPE_1__* critical_sections ;
 int * malloc (int,int ,int ) ;
 int memcpy (int *,struct cs*,int) ;
 int memset (int*,int ,int) ;
 int num_critical_sections ;
 int panic (char*) ;
 struct patch* patches ;
 int printf (char*,...) ;

__attribute__((used)) static int
ahc_loadseq(struct ahc_softc *ahc)
{
 struct cs cs_table[num_critical_sections];
 u_int begin_set[num_critical_sections];
 u_int end_set[num_critical_sections];
 const struct patch *cur_patch;
 u_int cs_count;
 u_int cur_cs;
 u_int i;
 u_int skip_addr;
 u_int sg_prefetch_cnt;
 int downloaded;
 uint8_t download_consts[7];





 cs_count = 0;
 cur_cs = 0;
 memset(begin_set, 0, sizeof(begin_set));
 memset(end_set, 0, sizeof(end_set));


 download_consts[QOUTFIFO_OFFSET] = 0;
 if (ahc->targetcmds != ((void*)0))
  download_consts[QOUTFIFO_OFFSET] += 32;
 download_consts[QINFIFO_OFFSET] = download_consts[QOUTFIFO_OFFSET] + 1;
 download_consts[CACHESIZE_MASK] = ahc->pci_cachesize - 1;
 download_consts[INVERTED_CACHESIZE_MASK] = ~(ahc->pci_cachesize - 1);
 sg_prefetch_cnt = ahc->pci_cachesize;
 if (sg_prefetch_cnt < (2 * sizeof(struct ahc_dma_seg)))
  sg_prefetch_cnt = 2 * sizeof(struct ahc_dma_seg);
 download_consts[SG_PREFETCH_CNT] = sg_prefetch_cnt;
 download_consts[SG_PREFETCH_ALIGN_MASK] = ~(sg_prefetch_cnt - 1);
 download_consts[SG_PREFETCH_ADDR_MASK] = (sg_prefetch_cnt - 1);

 cur_patch = patches;
 downloaded = 0;
 skip_addr = 0;
 ahc_outb(ahc, SEQCTL, PERRORDIS|FAILDIS|FASTMODE|LOADRAM);
 ahc_outb(ahc, SEQADDR0, 0);
 ahc_outb(ahc, SEQADDR1, 0);

 for (i = 0; i < sizeof(seqprog)/4; i++) {
  if (ahc_check_patch(ahc, &cur_patch, i, &skip_addr) == 0) {




   continue;
  }

  if (downloaded == ahc->instruction_ram_size) {





   printf("\n%s: Program too large for instruction memory "
          "size of %d!\n", ahc_name(ahc),
          ahc->instruction_ram_size);
   return (ENOMEM);
  }





  for (; cur_cs < num_critical_sections; cur_cs++) {
   if (critical_sections[cur_cs].end <= i) {
    if (begin_set[cs_count] == TRUE
     && end_set[cs_count] == FALSE) {
     cs_table[cs_count].end = downloaded;
      end_set[cs_count] = TRUE;
     cs_count++;
    }
    continue;
   }
   if (critical_sections[cur_cs].begin <= i
    && begin_set[cs_count] == FALSE) {
    cs_table[cs_count].begin = downloaded;
    begin_set[cs_count] = TRUE;
   }
   break;
  }
  ahc_download_instr(ahc, i, download_consts);
  downloaded++;
 }

 ahc->num_critical_sections = cs_count;
 if (cs_count != 0) {

  cs_count *= sizeof(struct cs);
  ahc->critical_sections = malloc(cs_count, M_DEVBUF, M_NOWAIT);
  if (ahc->critical_sections == ((void*)0))
   panic("ahc_loadseq: Could not malloc");
  memcpy(ahc->critical_sections, cs_table, cs_count);
 }
 ahc_outb(ahc, SEQCTL, PERRORDIS|FAILDIS|FASTMODE);

 if (bootverbose) {
  printf(" %d instructions downloaded\n", downloaded);
  printf("%s: Features 0x%x, Bugs 0x%x, Flags 0x%x\n",
         ahc_name(ahc), ahc->features, ahc->bugs, ahc->flags);
 }
 return (0);
}
