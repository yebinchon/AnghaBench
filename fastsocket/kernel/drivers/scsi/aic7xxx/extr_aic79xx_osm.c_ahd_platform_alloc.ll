; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_platform_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_platform_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AHD_LINUX_NOIRQ = common dso_local global i32 0, align 4
@aic79xx_seltime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_platform_alloc(%struct.ahd_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca i8*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* @M_DEVBUF, align 4
  %7 = load i32, i32* @M_NOWAIT, align 4
  %8 = call %struct.TYPE_3__* @malloc(i32 4, i32 %6, i32 %7)
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %9, i32 0, i32 1
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %10, align 8
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i32 @memset(%struct.TYPE_3__* %20, i32 0, i32 4)
  %22 = load i32, i32* @AHD_LINUX_NOIRQ, align 4
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %28 = call i32 @ahd_lockinit(%struct.ahd_softc* %27)
  %29 = load i32, i32* @aic79xx_seltime, align 4
  %30 = and i32 %29, 3
  %31 = shl i32 %30, 4
  %32 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %33 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %17, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.TYPE_3__* @malloc(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ahd_lockinit(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
