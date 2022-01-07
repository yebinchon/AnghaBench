; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_bus_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ahd_softc = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"%s: SCSI bus reset delivered. %d SCBs aborted.\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@AHD_SHOW_RECOVERY = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ahd_linux_bus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_linux_bus_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ahd_softc**
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %13, align 8
  store %struct.ahd_softc* %14, %struct.ahd_softc** %3, align 8
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %16 = call i32 @ahd_lock(%struct.ahd_softc* %15, i64* %5)
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %19 = call i64 @scmd_channel(%struct.scsi_cmnd* %18)
  %20 = add nsw i64 %19, 65
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i32 @ahd_reset_channel(%struct.ahd_softc* %17, i64 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %24 = call i32 @ahd_unlock(%struct.ahd_softc* %23, i64* %5)
  %25 = load i64, i64* @bootverbose, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %29 = call i8* @ahd_name(%struct.ahd_softc* %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load i32, i32* @SUCCESS, align 4
  ret i32 %33
}

declare dso_local i32 @ahd_lock(%struct.ahd_softc*, i64*) #1

declare dso_local i32 @ahd_reset_channel(%struct.ahd_softc*, i64, i32) #1

declare dso_local i64 @scmd_channel(%struct.scsi_cmnd*) #1

declare dso_local i32 @ahd_unlock(%struct.ahd_softc*, i64*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
