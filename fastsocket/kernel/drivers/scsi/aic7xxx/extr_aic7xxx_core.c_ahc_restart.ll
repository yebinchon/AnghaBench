; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i32 }

@SCSISIGO = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@MSG_NOOP = common dso_local global i32 0, align 4
@SXFRCTL1 = common dso_local global i32 0, align 4
@BITBUCKET = common dso_local global i32 0, align 4
@LASTPHASE = common dso_local global i32 0, align 4
@P_BUSFREE = common dso_local global i32 0, align 4
@SAVED_SCSIID = common dso_local global i32 0, align 4
@SAVED_LUN = common dso_local global i32 0, align 4
@TQINPOS = common dso_local global i32 0, align 4
@SCSISEQ = common dso_local global i32 0, align 4
@SCSISEQ_TEMPLATE = common dso_local global i32 0, align 4
@ENSELI = common dso_local global i32 0, align 4
@ENRSELI = common dso_local global i32 0, align 4
@ENAUTOATNP = common dso_local global i32 0, align 4
@AHC_CMD_CHAN = common dso_local global i32 0, align 4
@CCSCBCNT = common dso_local global i32 0, align 4
@CCSGCTL = common dso_local global i32 0, align 4
@CCSCBCTL = common dso_local global i32 0, align 4
@SEQ_FLAGS2 = common dso_local global i32 0, align 4
@SCB_DMA = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRSEQINT = common dso_local global i32 0, align 4
@MWI_RESIDUAL = common dso_local global i32 0, align 4
@SEQCTL = common dso_local global i32 0, align 4
@SEQADDR0 = common dso_local global i32 0, align 4
@SEQADDR1 = common dso_local global i32 0, align 4
@SBLKCTL = common dso_local global i32 0, align 4
@DIAGLEDEN = common dso_local global i32 0, align 4
@DIAGLEDON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_restart(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %4 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %5 = call i32 @ahc_pause(%struct.ahc_softc* %4)
  %6 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %7 = call i32 @ahc_clear_msg_state(%struct.ahc_softc* %6)
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %9 = load i32, i32* @SCSISIGO, align 4
  %10 = call i32 @ahc_outb(%struct.ahc_softc* %8, i32 %9, i32 0)
  %11 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %12 = load i32, i32* @MSG_OUT, align 4
  %13 = load i32, i32* @MSG_NOOP, align 4
  %14 = call i32 @ahc_outb(%struct.ahc_softc* %11, i32 %12, i32 %13)
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %16 = load i32, i32* @SXFRCTL1, align 4
  %17 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %18 = load i32, i32* @SXFRCTL1, align 4
  %19 = call i32 @ahc_inb(%struct.ahc_softc* %17, i32 %18)
  %20 = load i32, i32* @BITBUCKET, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @ahc_outb(%struct.ahc_softc* %15, i32 %16, i32 %22)
  %24 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %25 = load i32, i32* @LASTPHASE, align 4
  %26 = load i32, i32* @P_BUSFREE, align 4
  %27 = call i32 @ahc_outb(%struct.ahc_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %29 = load i32, i32* @SAVED_SCSIID, align 4
  %30 = call i32 @ahc_outb(%struct.ahc_softc* %28, i32 %29, i32 255)
  %31 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %32 = load i32, i32* @SAVED_LUN, align 4
  %33 = call i32 @ahc_outb(%struct.ahc_softc* %31, i32 %32, i32 255)
  %34 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %35 = load i32, i32* @TQINPOS, align 4
  %36 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %37 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ahc_outb(%struct.ahc_softc* %34, i32 %35, i32 %38)
  %40 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %41 = load i32, i32* @SCSISEQ, align 4
  %42 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %43 = load i32, i32* @SCSISEQ_TEMPLATE, align 4
  %44 = call i32 @ahc_inb(%struct.ahc_softc* %42, i32 %43)
  %45 = load i32, i32* @ENSELI, align 4
  %46 = load i32, i32* @ENRSELI, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @ENAUTOATNP, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %44, %49
  %51 = call i32 @ahc_outb(%struct.ahc_softc* %40, i32 %41, i32 %50)
  %52 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %53 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AHC_CMD_CHAN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %1
  %59 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %60 = load i32, i32* @CCSCBCNT, align 4
  %61 = call i32 @ahc_outb(%struct.ahc_softc* %59, i32 %60, i32 0)
  %62 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %63 = load i32, i32* @CCSGCTL, align 4
  %64 = call i32 @ahc_outb(%struct.ahc_softc* %62, i32 %63, i32 0)
  %65 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %66 = load i32, i32* @CCSCBCTL, align 4
  %67 = call i32 @ahc_outb(%struct.ahc_softc* %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %58, %1
  %69 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %70 = load i32, i32* @SEQ_FLAGS2, align 4
  %71 = call i32 @ahc_inb(%struct.ahc_softc* %69, i32 %70)
  %72 = load i32, i32* @SCB_DMA, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %68
  %76 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %77 = call i32 @ahc_add_curscb_to_free_list(%struct.ahc_softc* %76)
  %78 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %79 = load i32, i32* @SEQ_FLAGS2, align 4
  %80 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %81 = load i32, i32* @SEQ_FLAGS2, align 4
  %82 = call i32 @ahc_inb(%struct.ahc_softc* %80, i32 %81)
  %83 = load i32, i32* @SCB_DMA, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = call i32 @ahc_outb(%struct.ahc_softc* %78, i32 %79, i32 %85)
  br label %87

87:                                               ; preds = %75, %68
  %88 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %89 = load i32, i32* @CLRINT, align 4
  %90 = load i32, i32* @CLRSEQINT, align 4
  %91 = call i32 @ahc_outb(%struct.ahc_softc* %88, i32 %89, i32 %90)
  %92 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %93 = load i32, i32* @MWI_RESIDUAL, align 4
  %94 = call i32 @ahc_outb(%struct.ahc_softc* %92, i32 %93, i32 0)
  %95 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %96 = load i32, i32* @SEQCTL, align 4
  %97 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %98 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ahc_outb(%struct.ahc_softc* %95, i32 %96, i32 %99)
  %101 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %102 = load i32, i32* @SEQADDR0, align 4
  %103 = call i32 @ahc_outb(%struct.ahc_softc* %101, i32 %102, i32 0)
  %104 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %105 = load i32, i32* @SEQADDR1, align 4
  %106 = call i32 @ahc_outb(%struct.ahc_softc* %104, i32 %105, i32 0)
  %107 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %108 = load i32, i32* @SBLKCTL, align 4
  %109 = call i32 @ahc_inb(%struct.ahc_softc* %107, i32 %108)
  store i32 %109, i32* %3, align 4
  %110 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %111 = load i32, i32* @SBLKCTL, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @DIAGLEDEN, align 4
  %114 = load i32, i32* @DIAGLEDON, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = and i32 %112, %116
  %118 = call i32 @ahc_outb(%struct.ahc_softc* %110, i32 %111, i32 %117)
  %119 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %120 = call i32 @ahc_unpause(%struct.ahc_softc* %119)
  ret void
}

declare dso_local i32 @ahc_pause(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_clear_msg_state(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_add_curscb_to_free_list(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_unpause(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
