; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_proc.c_ahd_dump_target_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_proc.c_ahd_dump_target_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scsi_target** }
%struct.scsi_target = type { i32 }
%struct.info_str = type { i32 }
%struct.ahd_initiator_tinfo = type { i32, i32, i32 }
%struct.ahd_tmode_tstate = type { i32 }
%struct.scsi_device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Target %d Negotiation Settings\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\09User: \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\09Goal: \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\09Curr: \00", align 1
@AHD_NUM_LUNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.info_str*, i64, i8, i64)* @ahd_dump_target_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_dump_target_state(%struct.ahd_softc* %0, %struct.info_str* %1, i64 %2, i8 signext %3, i64 %4) #0 {
  %6 = alloca %struct.ahd_softc*, align 8
  %7 = alloca %struct.info_str*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca %struct.scsi_target*, align 8
  %12 = alloca %struct.ahd_initiator_tinfo*, align 8
  %13 = alloca %struct.ahd_tmode_tstate*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.scsi_device*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %6, align 8
  store %struct.info_str* %1, %struct.info_str** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8 %3, i8* %9, align 1
  store i64 %4, i64* %10, align 8
  %16 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %17 = load i8, i8* %9, align 1
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %16, i8 signext %17, i64 %18, i64 %19, %struct.ahd_tmode_tstate** %13)
  store %struct.ahd_initiator_tinfo* %20, %struct.ahd_initiator_tinfo** %12, align 8
  %21 = load %struct.info_str*, %struct.info_str** %7, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.info_str*, %struct.info_str** %7, align 8
  %25 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.info_str*, %struct.info_str** %7, align 8
  %27 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %28 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %27, i32 0, i32 2
  %29 = call i32 @ahd_format_transinfo(%struct.info_str* %26, i32* %28)
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %31 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.scsi_target**, %struct.scsi_target*** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.scsi_target*, %struct.scsi_target** %34, i64 %35
  %37 = load %struct.scsi_target*, %struct.scsi_target** %36, align 8
  store %struct.scsi_target* %37, %struct.scsi_target** %11, align 8
  %38 = load %struct.scsi_target*, %struct.scsi_target** %11, align 8
  %39 = icmp eq %struct.scsi_target* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %5
  br label %72

41:                                               ; preds = %5
  %42 = load %struct.info_str*, %struct.info_str** %7, align 8
  %43 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.info_str*, %struct.info_str** %7, align 8
  %45 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %46 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %45, i32 0, i32 1
  %47 = call i32 @ahd_format_transinfo(%struct.info_str* %44, i32* %46)
  %48 = load %struct.info_str*, %struct.info_str** %7, align 8
  %49 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.info_str*, %struct.info_str** %7, align 8
  %51 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %12, align 8
  %52 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %51, i32 0, i32 0
  %53 = call i32 @ahd_format_transinfo(%struct.info_str* %50, i32* %52)
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %69, %41
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @AHD_NUM_LUNS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load %struct.scsi_target*, %struct.scsi_target** %11, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call %struct.scsi_device* @scsi_device_lookup_by_target(%struct.scsi_target* %59, i32 %60)
  store %struct.scsi_device* %61, %struct.scsi_device** %15, align 8
  %62 = load %struct.scsi_device*, %struct.scsi_device** %15, align 8
  %63 = icmp eq %struct.scsi_device* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %69

65:                                               ; preds = %58
  %66 = load %struct.info_str*, %struct.info_str** %7, align 8
  %67 = load %struct.scsi_device*, %struct.scsi_device** %15, align 8
  %68 = call i32 @ahd_dump_device_state(%struct.info_str* %66, %struct.scsi_device* %67)
  br label %69

69:                                               ; preds = %65, %64
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %54

72:                                               ; preds = %40, %54
  ret void
}

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i8 signext, i64, i64, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @copy_info(%struct.info_str*, i8*, ...) #1

declare dso_local i32 @ahd_format_transinfo(%struct.info_str*, i32*) #1

declare dso_local %struct.scsi_device* @scsi_device_lookup_by_target(%struct.scsi_target*, i32) #1

declare dso_local i32 @ahd_dump_device_state(%struct.info_str*, %struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
