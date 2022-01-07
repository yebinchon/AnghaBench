; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_ahc_dump_target_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_ahc_dump_target_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scsi_target** }
%struct.scsi_target = type { i32 }
%struct.info_str = type { i32 }
%struct.ahc_initiator_tinfo = type { i32, i32, i32 }
%struct.ahc_tmode_tstate = type { i32 }
%struct.scsi_device = type { i32 }

@AHC_TWIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Channel %c \00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Target %d Negotiation Settings\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\09User: \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\09Goal: \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\09Curr: \00", align 1
@AHC_NUM_LUNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.info_str*, i64, i8, i64, i64)* @ahc_dump_target_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_dump_target_state(%struct.ahc_softc* %0, %struct.info_str* %1, i64 %2, i8 signext %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.ahc_softc*, align 8
  %8 = alloca %struct.info_str*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.scsi_target*, align 8
  %14 = alloca %struct.ahc_initiator_tinfo*, align 8
  %15 = alloca %struct.ahc_tmode_tstate*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.scsi_device*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %7, align 8
  store %struct.info_str* %1, %struct.info_str** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8 %3, i8* %10, align 1
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %19 = load i8, i8* %10, align 1
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc* %18, i8 signext %19, i64 %20, i64 %21, %struct.ahc_tmode_tstate** %15)
  store %struct.ahc_initiator_tinfo* %22, %struct.ahc_initiator_tinfo** %14, align 8
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %24 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AHC_TWIN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %6
  %30 = load %struct.info_str*, %struct.info_str** %8, align 8
  %31 = load i8, i8* %10, align 1
  %32 = sext i8 %31 to i32
  %33 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %6
  %35 = load %struct.info_str*, %struct.info_str** %8, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load %struct.info_str*, %struct.info_str** %8, align 8
  %39 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.info_str*, %struct.info_str** %8, align 8
  %41 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %14, align 8
  %42 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %41, i32 0, i32 2
  %43 = call i32 @ahc_format_transinfo(%struct.info_str* %40, i32* %42)
  %44 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %45 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.scsi_target**, %struct.scsi_target*** %47, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds %struct.scsi_target*, %struct.scsi_target** %48, i64 %49
  %51 = load %struct.scsi_target*, %struct.scsi_target** %50, align 8
  store %struct.scsi_target* %51, %struct.scsi_target** %13, align 8
  %52 = load %struct.scsi_target*, %struct.scsi_target** %13, align 8
  %53 = icmp ne %struct.scsi_target* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %34
  br label %86

55:                                               ; preds = %34
  %56 = load %struct.info_str*, %struct.info_str** %8, align 8
  %57 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.info_str*, %struct.info_str** %8, align 8
  %59 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %14, align 8
  %60 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %59, i32 0, i32 1
  %61 = call i32 @ahc_format_transinfo(%struct.info_str* %58, i32* %60)
  %62 = load %struct.info_str*, %struct.info_str** %8, align 8
  %63 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %64 = load %struct.info_str*, %struct.info_str** %8, align 8
  %65 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %14, align 8
  %66 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %65, i32 0, i32 0
  %67 = call i32 @ahc_format_transinfo(%struct.info_str* %64, i32* %66)
  store i32 0, i32* %16, align 4
  br label %68

68:                                               ; preds = %83, %55
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @AHC_NUM_LUNS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load %struct.scsi_target*, %struct.scsi_target** %13, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call %struct.scsi_device* @scsi_device_lookup_by_target(%struct.scsi_target* %73, i32 %74)
  store %struct.scsi_device* %75, %struct.scsi_device** %17, align 8
  %76 = load %struct.scsi_device*, %struct.scsi_device** %17, align 8
  %77 = icmp eq %struct.scsi_device* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %83

79:                                               ; preds = %72
  %80 = load %struct.info_str*, %struct.info_str** %8, align 8
  %81 = load %struct.scsi_device*, %struct.scsi_device** %17, align 8
  %82 = call i32 @ahc_dump_device_state(%struct.info_str* %80, %struct.scsi_device* %81)
  br label %83

83:                                               ; preds = %79, %78
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %16, align 4
  br label %68

86:                                               ; preds = %54, %68
  ret void
}

declare dso_local %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc*, i8 signext, i64, i64, %struct.ahc_tmode_tstate**) #1

declare dso_local i32 @copy_info(%struct.info_str*, i8*, ...) #1

declare dso_local i32 @ahc_format_transinfo(%struct.info_str*, i32*) #1

declare dso_local %struct.scsi_device* @scsi_device_lookup_by_target(%struct.scsi_target*, i32) #1

declare dso_local i32 @ahc_dump_device_state(%struct.info_str*, %struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
