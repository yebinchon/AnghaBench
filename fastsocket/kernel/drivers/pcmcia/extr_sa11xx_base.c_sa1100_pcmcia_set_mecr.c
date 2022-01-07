
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct soc_pcmcia_timing {int attr; int mem; int io; } ;
struct soc_pcmcia_socket {int nr; TYPE_1__* ops; } ;
struct TYPE_2__ {unsigned int (* get_timing ) (struct soc_pcmcia_socket*,unsigned int,int ) ;} ;


 scalar_t__ MECR ;
 int MECR_BSA_GET (scalar_t__,int ) ;
 int MECR_BSA_SET (scalar_t__,int ,unsigned int) ;
 int MECR_BSIO_GET (scalar_t__,int ) ;
 int MECR_BSIO_SET (scalar_t__,int ,unsigned int) ;
 int MECR_BSM_GET (scalar_t__,int ) ;
 int MECR_BSM_SET (scalar_t__,int ,unsigned int) ;
 int MECR_FAST_GET (scalar_t__,int ) ;
 int MECR_FAST_SET (scalar_t__,int ,int ) ;
 int debug (struct soc_pcmcia_socket*,int,char*,int ,int ,int ,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int soc_common_pcmcia_get_timing (struct soc_pcmcia_socket*,struct soc_pcmcia_timing*) ;
 unsigned int stub1 (struct soc_pcmcia_socket*,unsigned int,int ) ;
 unsigned int stub2 (struct soc_pcmcia_socket*,unsigned int,int ) ;
 unsigned int stub3 (struct soc_pcmcia_socket*,unsigned int,int ) ;

__attribute__((used)) static int
sa1100_pcmcia_set_mecr(struct soc_pcmcia_socket *skt, unsigned int cpu_clock)
{
 struct soc_pcmcia_timing timing;
 u32 mecr, old_mecr;
 unsigned long flags;
 unsigned int bs_io, bs_mem, bs_attr;

 soc_common_pcmcia_get_timing(skt, &timing);

 bs_io = skt->ops->get_timing(skt, cpu_clock, timing.io);
 bs_mem = skt->ops->get_timing(skt, cpu_clock, timing.mem);
 bs_attr = skt->ops->get_timing(skt, cpu_clock, timing.attr);

 local_irq_save(flags);

 old_mecr = mecr = MECR;
 MECR_FAST_SET(mecr, skt->nr, 0);
 MECR_BSIO_SET(mecr, skt->nr, bs_io);
 MECR_BSA_SET(mecr, skt->nr, bs_attr);
 MECR_BSM_SET(mecr, skt->nr, bs_mem);
 if (old_mecr != mecr)
  MECR = mecr;

 local_irq_restore(flags);

 debug(skt, 2, "FAST %X  BSM %X  BSA %X  BSIO %X\n",
       MECR_FAST_GET(mecr, skt->nr),
       MECR_BSM_GET(mecr, skt->nr), MECR_BSA_GET(mecr, skt->nr),
       MECR_BSIO_GET(mecr, skt->nr));

 return 0;
}
