; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aha152x.c_disp_ports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aha152x.c_disp_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@ATDONE = common dso_local global i32 0, align 4
@ATNTARG = common dso_local global i32 0, align 4
@BUSFREE = common dso_local global i32 0, align 4
@CH1 = common dso_local global i32 0, align 4
@CLRCH1 = common dso_local global i32 0, align 4
@CLRSTCNT = common dso_local global i32 0, align 4
@CURRENT_SC = common dso_local global i64 0, align 8
@DFIFOEMP = common dso_local global i32 0, align 4
@DFIFOFULL = common dso_local global i32 0, align 4
@DMA = common dso_local global i32 0, align 4
@DMACNTRL0 = common dso_local global i32 0, align 4
@DMADONE = common dso_local global i32 0, align 4
@DMAEN = common dso_local global i32 0, align 4
@DMASTAT = common dso_local global i32 0, align 4
@ENAUTOATNI = common dso_local global i32 0, align 4
@ENAUTOATNO = common dso_local global i32 0, align 4
@ENAUTOATNP = common dso_local global i32 0, align 4
@ENDMA = common dso_local global i32 0, align 4
@ENRESELI = common dso_local global i32 0, align 4
@ENSELI = common dso_local global i32 0, align 4
@ENSELO = common dso_local global i32 0, align 4
@FRERR = common dso_local global i32 0, align 4
@FWERR = common dso_local global i32 0, align 4
@INTEN = common dso_local global i32 0, align 4
@INTSTAT = common dso_local global i32 0, align 4
@PHASECHG = common dso_local global i32 0, align 4
@PHASEMIS = common dso_local global i32 0, align 4
@PREVSTATE = common dso_local global i64 0, align 8
@P_MASK = common dso_local global i32 0, align 4
@REQINIT = common dso_local global i32 0, align 4
@RSTFIFO = common dso_local global i32 0, align 4
@SCSIEN = common dso_local global i32 0, align 4
@SCSIPERR = common dso_local global i32 0, align 4
@SCSIRSTI = common dso_local global i32 0, align 4
@SCSIRSTO = common dso_local global i32 0, align 4
@SCSISEQ = common dso_local global i32 0, align 4
@SCSISIG = common dso_local global i32 0, align 4
@SDONE = common dso_local global i32 0, align 4
@SELDI = common dso_local global i32 0, align 4
@SELDO = common dso_local global i32 0, align 4
@SELID = common dso_local global i32 0, align 4
@SELINGO = common dso_local global i32 0, align 4
@SELTO = common dso_local global i32 0, align 4
@SEMPTY = common dso_local global i32 0, align 4
@SFCNT = common dso_local global i32 0, align 4
@SFULL = common dso_local global i32 0, align 4
@SIG_ACKI = common dso_local global i32 0, align 4
@SIG_ATNI = common dso_local global i32 0, align 4
@SIG_BSYI = common dso_local global i32 0, align 4
@SIG_REQI = common dso_local global i32 0, align 4
@SIG_SELI = common dso_local global i32 0, align 4
@SIMODE0 = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i32 0, align 4
@SOFFSET = common dso_local global i32 0, align 4
@SPIOEN = common dso_local global i32 0, align 4
@SPIORDY = common dso_local global i32 0, align 4
@SSTAT0 = common dso_local global i32 0, align 4
@SSTAT1 = common dso_local global i32 0, align 4
@SSTAT2 = common dso_local global i32 0, align 4
@SSTAT3 = common dso_local global i32 0, align 4
@SSTAT4 = common dso_local global i32 0, align 4
@STATE = common dso_local global i64 0, align 8
@SWINT = common dso_local global i32 0, align 4
@SWRAP = common dso_local global i32 0, align 4
@SXFRCTL0 = common dso_local global i32 0, align 4
@SYNCERR = common dso_local global i32 0, align 4
@TARGET = common dso_local global i32 0, align 4
@TEMODEO = common dso_local global i32 0, align 4
@WORDRDY = common dso_local global i32 0, align 4
@WRITE_READ = common dso_local global i32 0, align 4
@_8BIT = common dso_local global i32 0, align 4
@states = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @disp_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disp_ports(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
