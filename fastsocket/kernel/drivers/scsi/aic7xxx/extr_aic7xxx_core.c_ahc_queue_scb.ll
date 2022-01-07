; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_queue_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_queue_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i64*, i32, i32 }
%struct.scb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }

@SCB_LIST_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Attempt to queue invalid SCB tag %x:%x\0A\00", align 1
@LID = common dso_local global i32 0, align 4
@SCB_XFERLEN_ODD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@AHC_QUEUE_REGS = common dso_local global i32 0, align 4
@HNSCB_QOFF = common dso_local global i32 0, align 4
@AHC_AUTOPAUSE = common dso_local global i32 0, align 4
@KERNEL_QINPOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_queue_scb(%struct.ahc_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %6 = load %struct.scb*, %struct.scb** %4, align 8
  %7 = call i32 @ahc_swap_with_next_hscb(%struct.ahc_softc* %5, %struct.scb* %6)
  %8 = load %struct.scb*, %struct.scb** %4, align 8
  %9 = getelementptr inbounds %struct.scb, %struct.scb* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SCB_LIST_NULL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.scb*, %struct.scb** %4, align 8
  %17 = getelementptr inbounds %struct.scb, %struct.scb* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SCB_LIST_NULL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %15, %2
  %24 = load %struct.scb*, %struct.scb** %4, align 8
  %25 = getelementptr inbounds %struct.scb, %struct.scb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.scb*, %struct.scb** %4, align 8
  %30 = getelementptr inbounds %struct.scb, %struct.scb* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %33)
  br label %35

35:                                               ; preds = %23, %15
  %36 = load i32, i32* @LID, align 4
  %37 = load %struct.scb*, %struct.scb** %4, align 8
  %38 = getelementptr inbounds %struct.scb, %struct.scb* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %36
  store i32 %42, i32* %40, align 8
  %43 = load %struct.scb*, %struct.scb** %4, align 8
  %44 = call i32 @ahc_get_transfer_length(%struct.scb* %43)
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load i32, i32* @SCB_XFERLEN_ODD, align 4
  %49 = load %struct.scb*, %struct.scb** %4, align 8
  %50 = getelementptr inbounds %struct.scb, %struct.scb* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %48
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %47, %35
  %56 = load %struct.scb*, %struct.scb** %4, align 8
  %57 = getelementptr inbounds %struct.scb, %struct.scb* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i64, i64* %63, i64 %68
  store i64 %60, i64* %69, align 8
  %70 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %71 = load %struct.scb*, %struct.scb** %4, align 8
  %72 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %73 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @ahc_sync_scb(%struct.ahc_softc* %70, %struct.scb* %71, i32 %74)
  %76 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %77 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @AHC_QUEUE_REGS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %55
  %83 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %84 = load i32, i32* @HNSCB_QOFF, align 4
  %85 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %86 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ahc_outb(%struct.ahc_softc* %83, i32 %84, i32 %87)
  br label %116

89:                                               ; preds = %55
  %90 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %91 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @AHC_AUTOPAUSE, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %98 = call i32 @ahc_pause(%struct.ahc_softc* %97)
  br label %99

99:                                               ; preds = %96, %89
  %100 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %101 = load i32, i32* @KERNEL_QINPOS, align 4
  %102 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %103 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ahc_outb(%struct.ahc_softc* %100, i32 %101, i32 %104)
  %106 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %107 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @AHC_AUTOPAUSE, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %99
  %113 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %114 = call i32 @ahc_unpause(%struct.ahc_softc* %113)
  br label %115

115:                                              ; preds = %112, %99
  br label %116

116:                                              ; preds = %115, %82
  ret void
}

declare dso_local i32 @ahc_swap_with_next_hscb(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @panic(i8*, i64, i64) #1

declare dso_local i32 @ahc_get_transfer_length(%struct.scb*) #1

declare dso_local i32 @ahc_sync_scb(%struct.ahc_softc*, %struct.scb*, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_pause(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_unpause(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
