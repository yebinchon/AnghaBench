; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_config.c_mpt3sas_config_get_raid_volume_pg0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_config.c_mpt3sas_config_get_raid_volume_pg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 (%struct.MPT3SAS_ADAPTER*, i32*)* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }

@MPI2_FUNCTION_CONFIG = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI2_CONFIG_PAGETYPE_RAID_VOLUME = common dso_local global i32 0, align 4
@MPI2_RAIDVOLPAGE0_PAGEVERSION = common dso_local global i32 0, align 4
@MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt3sas_config_get_raid_volume_pg0(%struct.MPT3SAS_ADAPTER* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = call i32 @memset(%struct.TYPE_6__* %13, i32 0, i32 48)
  %16 = load i32, i32* @MPI2_FUNCTION_CONFIG, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_HEADER, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @MPI2_CONFIG_PAGETYPE_RAID_VOLUME, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @MPI2_RAIDVOLPAGE0_PAGEVERSION, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %29 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %28, i32 0, i32 0
  %30 = load i32 (%struct.MPT3SAS_ADAPTER*, i32*)*, i32 (%struct.MPT3SAS_ADAPTER*, i32*)** %29, align 8
  %31 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %33 = call i32 %30(%struct.MPT3SAS_ADAPTER* %31, i32* %32)
  %34 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %37 = call i32 @_config_request(%struct.MPT3SAS_ADAPTER* %34, %struct.TYPE_6__* %13, i32* %35, i32 %36, i32* null, i32 0)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %6
  br label %55

41:                                               ; preds = %6
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @cpu_to_le32(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* @MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @_config_request(%struct.MPT3SAS_ADAPTER* %49, %struct.TYPE_6__* %13, i32* %50, i32 %51, i32* %52, i32 %53)
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %41, %40
  %56 = load i32, i32* %14, align 4
  ret i32 %56
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @_config_request(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_6__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
