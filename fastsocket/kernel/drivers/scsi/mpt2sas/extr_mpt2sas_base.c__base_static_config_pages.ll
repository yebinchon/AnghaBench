; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_base.c__base_static_config_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_base.c__base_static_config_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT2SAS_ADAPTER = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MPI2_IOCFACTS_CAPABILITY_TASK_SET_FULL_HANDLING = common dso_local global i32 0, align 4
@MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT2SAS_ADAPTER*)* @_base_static_config_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_base_static_config_pages(%struct.MPT2SAS_ADAPTER* %0) #0 {
  %2 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.MPT2SAS_ADAPTER* %0, %struct.MPT2SAS_ADAPTER** %2, align 8
  %5 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %6 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %7 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %6, i32 0, i32 8
  %8 = call i32 @mpt2sas_config_get_manufacturing_pg0(%struct.MPT2SAS_ADAPTER* %5, i32* %3, i32* %7)
  %9 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %10 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %15 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %16 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %15, i32 0, i32 6
  %17 = call i32 @mpt2sas_config_get_manufacturing_pg10(%struct.MPT2SAS_ADAPTER* %14, i32* %3, i32* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %20 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %21 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %20, i32 0, i32 5
  %22 = call i32 @mpt2sas_config_get_bios_pg2(%struct.MPT2SAS_ADAPTER* %19, i32* %3, i32* %21)
  %23 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %24 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %25 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %24, i32 0, i32 4
  %26 = call i32 @mpt2sas_config_get_bios_pg3(%struct.MPT2SAS_ADAPTER* %23, i32* %3, i32* %25)
  %27 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %28 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %29 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %28, i32 0, i32 3
  %30 = call i32 @mpt2sas_config_get_ioc_pg8(%struct.MPT2SAS_ADAPTER* %27, i32* %3, i32* %29)
  %31 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %32 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %33 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %32, i32 0, i32 2
  %34 = call i32 @mpt2sas_config_get_iounit_pg0(%struct.MPT2SAS_ADAPTER* %31, i32* %3, i32* %33)
  %35 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %36 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %37 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %36, i32 0, i32 0
  %38 = call i32 @mpt2sas_config_get_iounit_pg1(%struct.MPT2SAS_ADAPTER* %35, i32* %3, %struct.TYPE_5__* %37)
  %39 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %40 = call i32 @_base_display_ioc_capabilities(%struct.MPT2SAS_ADAPTER* %39)
  %41 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %42 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le32_to_cpu(i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %47 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MPI2_IOCFACTS_CAPABILITY_TASK_SET_FULL_HANDLING, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %18
  %54 = load i32, i32* @MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %62

58:                                               ; preds = %18
  %59 = load i32, i32* @MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @cpu_to_le32(i32 %63)
  %65 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %66 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %69 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %2, align 8
  %70 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %69, i32 0, i32 0
  %71 = call i32 @mpt2sas_config_set_iounit_pg1(%struct.MPT2SAS_ADAPTER* %68, i32* %3, %struct.TYPE_5__* %70)
  ret void
}

declare dso_local i32 @mpt2sas_config_get_manufacturing_pg0(%struct.MPT2SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt2sas_config_get_manufacturing_pg10(%struct.MPT2SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt2sas_config_get_bios_pg2(%struct.MPT2SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt2sas_config_get_bios_pg3(%struct.MPT2SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt2sas_config_get_ioc_pg8(%struct.MPT2SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt2sas_config_get_iounit_pg0(%struct.MPT2SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt2sas_config_get_iounit_pg1(%struct.MPT2SAS_ADAPTER*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @_base_display_ioc_capabilities(%struct.MPT2SAS_ADAPTER*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mpt2sas_config_set_iounit_pg1(%struct.MPT2SAS_ADAPTER*, i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
