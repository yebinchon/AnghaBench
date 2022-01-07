; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_qinfifo_requeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_qinfifo_requeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { %struct.TYPE_3__*, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.scb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@NEXT_QUEUED_SCB_ADDR = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.scb*, %struct.scb*)* @ahd_qinfifo_requeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_qinfifo_requeue(%struct.ahd_softc* %0, %struct.scb* %1, %struct.scb* %2) #0 {
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca %struct.scb*, align 8
  %6 = alloca %struct.scb*, align 8
  %7 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store %struct.scb* %1, %struct.scb** %5, align 8
  store %struct.scb* %2, %struct.scb** %6, align 8
  %8 = load %struct.scb*, %struct.scb** %5, align 8
  %9 = icmp eq %struct.scb* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load %struct.scb*, %struct.scb** %6, align 8
  %12 = getelementptr inbounds %struct.scb, %struct.scb* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ahd_le32toh(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %18 = load i32, i32* @NEXT_QUEUED_SCB_ADDR, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ahd_outl(%struct.ahd_softc* %17, i32 %18, i32 %19)
  br label %37

21:                                               ; preds = %3
  %22 = load %struct.scb*, %struct.scb** %6, align 8
  %23 = getelementptr inbounds %struct.scb, %struct.scb* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.scb*, %struct.scb** %5, align 8
  %28 = getelementptr inbounds %struct.scb, %struct.scb* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %32 = load %struct.scb*, %struct.scb** %5, align 8
  %33 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %34 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @ahd_sync_scb(%struct.ahd_softc* %31, %struct.scb* %32, i32 %35)
  br label %37

37:                                               ; preds = %21, %10
  %38 = load %struct.scb*, %struct.scb** %6, align 8
  %39 = call i32 @SCB_GET_TAG(%struct.scb* %38)
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %41 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @AHD_QIN_WRAP(i32 %45)
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  store i32 %39, i32* %47, align 4
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %49 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %53 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.scb*, %struct.scb** %6, align 8
  %58 = getelementptr inbounds %struct.scb, %struct.scb* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %62 = load %struct.scb*, %struct.scb** %6, align 8
  %63 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %64 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @ahd_sync_scb(%struct.ahd_softc* %61, %struct.scb* %62, i32 %65)
  ret void
}

declare dso_local i32 @ahd_le32toh(i32) #1

declare dso_local i32 @ahd_outl(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_sync_scb(%struct.ahd_softc*, %struct.scb*, i32) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i64 @AHD_QIN_WRAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
