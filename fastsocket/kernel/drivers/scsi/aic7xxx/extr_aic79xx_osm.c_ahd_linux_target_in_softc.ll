; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_target_in_softc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_target_in_softc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i32, i64, i32 }
%struct.ahd_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.scsi_target** }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_target** (%struct.scsi_target*)* @ahd_linux_target_in_softc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_target** @ahd_linux_target_in_softc(%struct.scsi_target* %0) #0 {
  %2 = alloca %struct.scsi_target*, align 8
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_target* %0, %struct.scsi_target** %2, align 8
  %5 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %5, i32 0, i32 2
  %7 = call %struct.TYPE_4__* @dev_to_shost(i32* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ahd_softc**
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %10, align 8
  store %struct.ahd_softc* %11, %struct.ahd_softc** %3, align 8
  %12 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = add i32 %20, 8
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.scsi_target**, %struct.scsi_target*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.scsi_target*, %struct.scsi_target** %27, i64 %29
  ret %struct.scsi_target** %30
}

declare dso_local %struct.TYPE_4__* @dev_to_shost(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
