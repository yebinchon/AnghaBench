
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_tmode_tstate {int init_level; struct ahc_tmode_tstate* seep_config; struct ahc_tmode_tstate* name; struct ahc_tmode_tstate* black_hole; int path; struct ahc_tmode_tstate** enabled_luns; struct ahc_tmode_tstate** enabled_targets; int parent_dmat; int buffer_dmat; int shared_data_dmat; int shared_data_dmamap; int qoutfifo; } ;
struct ahc_tmode_lstate {int init_level; struct ahc_tmode_lstate* seep_config; struct ahc_tmode_lstate* name; struct ahc_tmode_lstate* black_hole; int path; struct ahc_tmode_lstate** enabled_luns; struct ahc_tmode_lstate** enabled_targets; int parent_dmat; int buffer_dmat; int shared_data_dmat; int shared_data_dmamap; int qoutfifo; } ;
struct ahc_softc {int init_level; struct ahc_softc* seep_config; struct ahc_softc* name; struct ahc_softc* black_hole; int path; struct ahc_softc** enabled_luns; struct ahc_softc** enabled_targets; int parent_dmat; int buffer_dmat; int shared_data_dmat; int shared_data_dmamap; int qoutfifo; } ;


 int AHC_NUM_LUNS ;
 int AHC_NUM_TARGETS ;
 int M_DEVBUF ;
 int ahc_dma_tag_destroy (struct ahc_tmode_tstate*,int ) ;
 int ahc_dmamap_destroy (struct ahc_tmode_tstate*,int ,int ) ;
 int ahc_dmamap_unload (struct ahc_tmode_tstate*,int ,int ) ;
 int ahc_dmamem_free (struct ahc_tmode_tstate*,int ,int ,int ) ;
 int ahc_fini_scbdata (struct ahc_tmode_tstate*) ;
 int ahc_platform_free (struct ahc_tmode_tstate*) ;
 int ahc_shutdown (struct ahc_tmode_tstate*) ;
 int free (struct ahc_tmode_tstate*,int ) ;
 int xpt_free_path (int ) ;

void
ahc_free(struct ahc_softc *ahc)
{
 int i;

 switch (ahc->init_level) {
 default:
 case 5:
  ahc_shutdown(ahc);

 case 4:
  ahc_dmamap_unload(ahc, ahc->shared_data_dmat,
      ahc->shared_data_dmamap);

 case 3:
  ahc_dmamem_free(ahc, ahc->shared_data_dmat, ahc->qoutfifo,
    ahc->shared_data_dmamap);
  ahc_dmamap_destroy(ahc, ahc->shared_data_dmat,
       ahc->shared_data_dmamap);

 case 2:
  ahc_dma_tag_destroy(ahc, ahc->shared_data_dmat);
 case 1:



  break;
 case 0:
  break;
 }




 ahc_platform_free(ahc);
 ahc_fini_scbdata(ahc);
 for (i = 0; i < AHC_NUM_TARGETS; i++) {
  struct ahc_tmode_tstate *tstate;

  tstate = ahc->enabled_targets[i];
  if (tstate != ((void*)0)) {
   free(tstate, M_DEVBUF);
  }
 }






 if (ahc->name != ((void*)0))
  free(ahc->name, M_DEVBUF);
 if (ahc->seep_config != ((void*)0))
  free(ahc->seep_config, M_DEVBUF);

 free(ahc, M_DEVBUF);

 return;
}
