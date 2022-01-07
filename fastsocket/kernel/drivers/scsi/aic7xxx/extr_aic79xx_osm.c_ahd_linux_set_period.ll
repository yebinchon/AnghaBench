; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_set_period.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_set_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.Scsi_Host = type { i32, i64 }
%struct.ahd_softc = type { i32 }
%struct.ahd_tmode_tstate = type { i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.ahd_devinfo = type { i32 }

@MAX_OFFSET = common dso_local global i64 0, align 8
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@MSG_EXT_PPR_QAS_REQ = common dso_local global i32 0, align 4
@AHD_SYNCRATE_MAX = common dso_local global i32 0, align 4
@AHD_SYNCRATE_ULTRA2 = common dso_local global i32 0, align 4
@AHD_TRANS_GOAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AHD_SHOW_DV = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*, i32)* @ahd_linux_set_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_linux_set_period(%struct.scsi_target* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.ahd_softc*, align 8
  %7 = alloca %struct.ahd_tmode_tstate*, align 8
  %8 = alloca %struct.ahd_initiator_tinfo*, align 8
  %9 = alloca %struct.ahd_devinfo, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
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
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %10, align 4
  %40 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %8, align 8
  %41 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = load i64, i64* @MAX_OFFSET, align 8
  store i64 %47, i64* %13, align 8
  br label %48

48:                                               ; preds = %46, %2
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 8, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 10
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %57 = call i64 @spi_max_width(%struct.scsi_target* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 8
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %65, %59
  br label %71

70:                                               ; preds = %55
  store i32 10, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %69
  br label %72

72:                                               ; preds = %71, %52
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %11, align 4
  %76 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %77 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %80 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %83 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 65
  %86 = load i32, i32* @ROLE_INITIATOR, align 4
  %87 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %9, i32 %78, i32 %81, i32 0, i64 %85, i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @MSG_EXT_PPR_QAS_REQ, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %72
  %94 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %95 = call i64 @spi_width(%struct.scsi_target* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* @MSG_EXT_PPR_QAS_REQ, align 4
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %72
  %103 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @AHD_SYNCRATE_MAX, align 4
  br label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @AHD_SYNCRATE_ULTRA2, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = call i32 @ahd_find_syncrate(%struct.ahd_softc* %103, i32* %4, i32* %10, i32 %111)
  %113 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %114 = call i32 @ahd_lock(%struct.ahd_softc* %113, i64* %12)
  %115 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %116 = load i32, i32* %4, align 4
  %117 = load i64, i64* %13, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %120 = load i32, i32* @FALSE, align 4
  %121 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %115, %struct.ahd_devinfo* %9, i32 %116, i64 %117, i32 %118, i32 %119, i32 %120)
  %122 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %123 = call i32 @ahd_unlock(%struct.ahd_softc* %122, i64* %12)
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i64, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i64 @spi_max_width(%struct.scsi_target*) #1

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i32, i32, i32, i64, i32) #1

declare dso_local i64 @spi_width(%struct.scsi_target*) #1

declare dso_local i32 @ahd_find_syncrate(%struct.ahd_softc*, i32*, i32*, i32) #1

declare dso_local i32 @ahd_lock(%struct.ahd_softc*, i64*) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ahd_unlock(%struct.ahd_softc*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
