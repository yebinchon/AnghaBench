; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_config.c_mpt2sas_config_get_number_hba_phys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_config.c_mpt2sas_config_get_number_hba_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT2SAS_ADAPTER = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@MPI2_FUNCTION_CONFIG = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI2_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@MPI2_CONFIG_EXTPAGETYPE_SAS_IO_UNIT = common dso_local global i32 0, align 4
@MPI2_SASIOUNITPAGE0_PAGEVERSION = common dso_local global i32 0, align 4
@MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt2sas_config_get_number_hba_phys(%struct.MPT2SAS_ADAPTER* %0, i32* %1) #0 {
  %3 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca %struct.TYPE_10__, align 4
  store %struct.MPT2SAS_ADAPTER* %0, %struct.MPT2SAS_ADAPTER** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = call i32 @memset(%struct.TYPE_11__* %5, i32 0, i32 40)
  %12 = load i32, i32* @MPI2_FUNCTION_CONFIG, align 4
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_HEADER, align 4
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @MPI2_CONFIG_PAGETYPE_EXTENDED, align 4
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @MPI2_CONFIG_EXTPAGETYPE_SAS_IO_UNIT, align 4
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @MPI2_SASIOUNITPAGE0_PAGEVERSION, align 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %28 = call i32 @mpt2sas_base_build_zero_len_sge(%struct.MPT2SAS_ADAPTER* %26, i32* %27)
  %29 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %30 = load i32, i32* @MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %31 = call i32 @_config_request(%struct.MPT2SAS_ADAPTER* %29, %struct.TYPE_11__* %5, %struct.TYPE_12__* %8, i32 %30, %struct.TYPE_10__* null, i32 0)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %58

35:                                               ; preds = %2
  %36 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %39 = load i32, i32* @MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %40 = call i32 @_config_request(%struct.MPT2SAS_ADAPTER* %38, %struct.TYPE_11__* %5, %struct.TYPE_12__* %8, i32 %39, %struct.TYPE_10__* %9, i32 4)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  %47 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %4, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %43
  br label %57

57:                                               ; preds = %56, %35
  br label %58

58:                                               ; preds = %57, %34
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mpt2sas_base_build_zero_len_sge(%struct.MPT2SAS_ADAPTER*, i32*) #1

declare dso_local i32 @_config_request(%struct.MPT2SAS_ADAPTER*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
