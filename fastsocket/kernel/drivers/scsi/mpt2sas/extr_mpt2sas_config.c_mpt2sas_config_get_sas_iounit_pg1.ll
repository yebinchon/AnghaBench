; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_config.c_mpt2sas_config_get_sas_iounit_pg1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_config.c_mpt2sas_config_get_sas_iounit_pg1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT2SAS_ADAPTER = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@MPI2_FUNCTION_CONFIG = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI2_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@MPI2_CONFIG_EXTPAGETYPE_SAS_IO_UNIT = common dso_local global i32 0, align 4
@MPI2_SASIOUNITPAGE1_PAGEVERSION = common dso_local global i32 0, align 4
@MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt2sas_config_get_sas_iounit_pg1(%struct.MPT2SAS_ADAPTER* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i32, align 4
  store %struct.MPT2SAS_ADAPTER* %0, %struct.MPT2SAS_ADAPTER** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i32 @memset(%struct.TYPE_6__* %9, i32 0, i32 28)
  %12 = load i32, i32* @MPI2_FUNCTION_CONFIG, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_HEADER, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @MPI2_CONFIG_PAGETYPE_EXTENDED, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @MPI2_CONFIG_EXTPAGETYPE_SAS_IO_UNIT, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* @MPI2_SASIOUNITPAGE1_PAGEVERSION, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %28 = call i32 @mpt2sas_base_build_zero_len_sge(%struct.MPT2SAS_ADAPTER* %26, i32* %27)
  %29 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %32 = call i32 @_config_request(%struct.MPT2SAS_ADAPTER* %29, %struct.TYPE_6__* %9, i32* %30, i32 %31, i32* null, i32 0)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  br label %45

36:                                               ; preds = %4
  %37 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @_config_request(%struct.MPT2SAS_ADAPTER* %39, %struct.TYPE_6__* %9, i32* %40, i32 %41, i32* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %36, %35
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @mpt2sas_base_build_zero_len_sge(%struct.MPT2SAS_ADAPTER*, i32*) #1

declare dso_local i32 @_config_request(%struct.MPT2SAS_ADAPTER*, %struct.TYPE_6__*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
