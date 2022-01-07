; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_sync_sglist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_sync_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.scb = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_sync_sglist(%struct.ahd_softc* %0, %struct.scb* %1, i32 %2) #0 {
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca %struct.scb*, align 8
  %6 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store %struct.scb* %1, %struct.scb** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.scb*, %struct.scb** %5, align 8
  %8 = getelementptr inbounds %struct.scb, %struct.scb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %38

12:                                               ; preds = %3
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.scb*, %struct.scb** %5, align 8
  %19 = getelementptr inbounds %struct.scb, %struct.scb* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.scb*, %struct.scb** %5, align 8
  %24 = getelementptr inbounds %struct.scb, %struct.scb* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %27 = call i32 @ahd_sg_size(%struct.ahd_softc* %26)
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %25, %28
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %31 = call i32 @ahd_sg_size(%struct.ahd_softc* %30)
  %32 = load %struct.scb*, %struct.scb** %5, align 8
  %33 = getelementptr inbounds %struct.scb, %struct.scb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %31, %34
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ahd_dmamap_sync(%struct.ahd_softc* %13, i32 %17, i32 %22, i64 %29, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @ahd_dmamap_sync(%struct.ahd_softc*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @ahd_sg_size(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
