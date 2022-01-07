; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_platform_freeze_devq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_platform_freeze_devq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.scb = type { i32 }

@SCB_LIST_NULL = common dso_local global i32 0, align 4
@ROLE_UNKNOWN = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_platform_freeze_devq(%struct.ahd_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %5 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %6 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %7 = load %struct.scb*, %struct.scb** %4, align 8
  %8 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %6, %struct.scb* %7)
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %10 = load %struct.scb*, %struct.scb** %4, align 8
  %11 = call i32 @SCB_GET_CHANNEL(%struct.ahd_softc* %9, %struct.scb* %10)
  %12 = load %struct.scb*, %struct.scb** %4, align 8
  %13 = call i32 @SCB_GET_LUN(%struct.scb* %12)
  %14 = load i32, i32* @SCB_LIST_NULL, align 4
  %15 = load i32, i32* @ROLE_UNKNOWN, align 4
  %16 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %17 = call i32 @ahd_platform_abort_scbs(%struct.ahd_softc* %5, i32 %8, i32 %11, i32 %13, i32 %14, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @ahd_platform_abort_scbs(%struct.ahd_softc*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCB_GET_TARGET(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_CHANNEL(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_LUN(%struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
