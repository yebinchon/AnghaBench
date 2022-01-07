; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_config.c_mpt2sas_config_get_sas_device_pg0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_config.c_mpt2sas_config_get_sas_device_pg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT2SAS_ADAPTER = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }

@MPI2_FUNCTION_CONFIG = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI2_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@MPI2_CONFIG_EXTPAGETYPE_SAS_DEVICE = common dso_local global i32 0, align 4
@MPI2_SASDEVICE0_PAGEVERSION = common dso_local global i32 0, align 4
@MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt2sas_config_get_sas_device_pg0(%struct.MPT2SAS_ADAPTER* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca i32, align 4
  store %struct.MPT2SAS_ADAPTER* %0, %struct.MPT2SAS_ADAPTER** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 40)
  %14 = load i32, i32* @MPI2_FUNCTION_CONFIG, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 5
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_HEADER, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @MPI2_CONFIG_PAGETYPE_EXTENDED, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MPI2_CONFIG_EXTPAGETYPE_SAS_DEVICE, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @MPI2_SASDEVICE0_PAGEVERSION, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %30 = call i32 @mpt2sas_base_build_zero_len_sge(%struct.MPT2SAS_ADAPTER* %28, i32* %29)
  %31 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %34 = call i32 @_config_request(%struct.MPT2SAS_ADAPTER* %31, %struct.TYPE_6__* %11, i32* %32, i32 %33, i32* null, i32 0)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  br label %51

38:                                               ; preds = %5
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @_config_request(%struct.MPT2SAS_ADAPTER* %46, %struct.TYPE_6__* %11, i32* %47, i32 %48, i32* %49, i32 4)
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %38, %37
  %52 = load i32, i32* %12, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @mpt2sas_base_build_zero_len_sge(%struct.MPT2SAS_ADAPTER*, i32*) #1

declare dso_local i32 @_config_request(%struct.MPT2SAS_ADAPTER*, %struct.TYPE_6__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
