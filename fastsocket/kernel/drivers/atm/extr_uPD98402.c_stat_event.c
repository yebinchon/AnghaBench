
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_dev {int dummy; } ;


 int ADD_LIMITED (int ,int ) ;
 int B1ECT ;
 int B2ECT ;
 int B3ECT ;
 unsigned char GET (int ) ;
 int LECCT ;
 int PCR ;
 int PFECB ;
 int line_bip ;
 int line_febe ;
 int path_bip ;
 int path_febe ;
 int section_bip ;
 unsigned char uPD98402_PFM_B1E ;
 unsigned char uPD98402_PFM_B2E ;
 unsigned char uPD98402_PFM_B3E ;
 unsigned char uPD98402_PFM_LFEB ;
 unsigned char uPD98402_PFM_PFEB ;

__attribute__((used)) static void stat_event(struct atm_dev *dev)
{
 unsigned char events;

 events = GET(PCR);
 if (events & uPD98402_PFM_PFEB) ADD_LIMITED(path_febe,PFECB);
 if (events & uPD98402_PFM_LFEB) ADD_LIMITED(line_febe,LECCT);
 if (events & uPD98402_PFM_B3E) ADD_LIMITED(path_bip,B3ECT);
 if (events & uPD98402_PFM_B2E) ADD_LIMITED(line_bip,B2ECT);
 if (events & uPD98402_PFM_B1E) ADD_LIMITED(section_bip,B1ECT);
}
