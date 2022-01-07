; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_set_wr_flow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_set_wr_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.Scsi_Host = type { i32, i64 }
%struct.ahd_softc = type { i32 }
%struct.ahd_tmode_tstate = type { i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ahd_devinfo = type { i32 }

@MSG_EXT_PPR_WR_FLOW = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@AHD_SYNCRATE_MAX = common dso_local global i32 0, align 4
@AHD_SYNCRATE_ULTRA2 = common dso_local global i32 0, align 4
@AHD_TRANS_GOAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AHD_SHOW_DV = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*, i32)* @ahd_linux_set_wr_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_linux_set_wr_flow(%struct.scsi_target* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.ahd_softc*, align 8
  %7 = alloca %struct.ahd_tmode_tstate*, align 8
  %8 = alloca %struct.ahd_initiator_tinfo*, align 8
  %9 = alloca %struct.ahd_devinfo, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.Scsi_Host* @dev_to_shost(i32 %17)
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %5, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ahd_softc**
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %22, align 8
  store %struct.ahd_softc* %23, %struct.ahd_softc** %6, align 8
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %25 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 65
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %24, i64 %28, i32 %31, i32 %34, %struct.ahd_tmode_tstate** %7)
  store %struct.ahd_initiator_tinfo* %35, %struct.ahd_initiator_tinfo** %8, align 8
  %36 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %37 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MSG_EXT_PPR_WR_FLOW, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %44 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %2
  %53 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %54 = call i64 @spi_max_width(%struct.scsi_target* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @MSG_EXT_PPR_WR_FLOW, align 4
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %56, %52, %2
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %62 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %65 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %68 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 65
  %71 = load i32, i32* @ROLE_INITIATOR, align 4
  %72 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %9, i32 %63, i32 %66, i32 0, i64 %70, i32 %71)
  %73 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %60
  %77 = load i32, i32* @AHD_SYNCRATE_MAX, align 4
  br label %80

78:                                               ; preds = %60
  %79 = load i32, i32* @AHD_SYNCRATE_ULTRA2, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = call i32 @ahd_find_syncrate(%struct.ahd_softc* %73, i32* %11, i32* %10, i32 %81)
  %83 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %84 = call i32 @ahd_lock(%struct.ahd_softc* %83, i64* %13)
  %85 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %88 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %93 = load i32, i32* @FALSE, align 4
  %94 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %85, %struct.ahd_devinfo* %9, i32 %86, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %96 = call i32 @ahd_unlock(%struct.ahd_softc* %95, i64* %13)
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i64, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i64 @spi_max_width(%struct.scsi_target*) #1

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ahd_find_syncrate(%struct.ahd_softc*, i32*, i32*, i32) #1

declare dso_local i32 @ahd_lock(%struct.ahd_softc*, i64*) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_unlock(%struct.ahd_softc*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
