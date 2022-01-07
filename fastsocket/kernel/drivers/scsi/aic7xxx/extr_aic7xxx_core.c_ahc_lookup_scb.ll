; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_lookup_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_lookup_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scb = type { i32 }
%struct.ahc_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scb** }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.scb*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.scb**, %struct.scb*** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.scb*, %struct.scb** %10, i64 %11
  %13 = load %struct.scb*, %struct.scb** %12, align 8
  store %struct.scb* %13, %struct.scb** %5, align 8
  %14 = load %struct.scb*, %struct.scb** %5, align 8
  %15 = icmp ne %struct.scb* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %18 = load %struct.scb*, %struct.scb** %5, align 8
  %19 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %20 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @ahc_sync_scb(%struct.ahc_softc* %17, %struct.scb* %18, i32 %21)
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.scb*, %struct.scb** %5, align 8
  ret %struct.scb* %24
}

declare dso_local i32 @ahc_sync_scb(%struct.ahc_softc*, %struct.scb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
