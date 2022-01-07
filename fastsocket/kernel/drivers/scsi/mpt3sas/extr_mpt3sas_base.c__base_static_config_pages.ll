; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_static_config_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_static_config_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"%s: overriding NVDATA EEDPTagMode setting\0A\00", align 1
@MPI2_IOCFACTS_CAPABILITY_TASK_SET_FULL_HANDLING = common dso_local global i32 0, align 4
@MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*)* @_base_static_config_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_base_static_config_pages(%struct.MPT3SAS_ADAPTER* %0) #0 {
  %2 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %2, align 8
  %5 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %6 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %7 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %6, i32 0, i32 10
  %8 = call i32 @mpt3sas_config_get_manufacturing_pg0(%struct.MPT3SAS_ADAPTER* %5, i32* %3, i32* %7)
  %9 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %10 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %9, i32 0, i32 9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %15 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %16 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %15, i32 0, i32 8
  %17 = call i32 @mpt3sas_config_get_manufacturing_pg10(%struct.MPT3SAS_ADAPTER* %14, i32* %3, i32* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %20 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %21 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %20, i32 0, i32 6
  %22 = call i32 @mpt3sas_config_get_manufacturing_pg11(%struct.MPT3SAS_ADAPTER* %19, i32* %3, %struct.TYPE_7__* %21)
  %23 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %24 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %18
  %29 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %30 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %34 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, -4
  store i32 %37, i32* %35, align 8
  %38 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %39 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %44 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %45 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %44, i32 0, i32 6
  %46 = call i32 @mpt3sas_config_set_manufacturing_pg11(%struct.MPT3SAS_ADAPTER* %43, i32* %3, %struct.TYPE_7__* %45)
  br label %47

47:                                               ; preds = %28, %18
  %48 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %49 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %50 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %49, i32 0, i32 5
  %51 = call i32 @mpt3sas_config_get_bios_pg2(%struct.MPT3SAS_ADAPTER* %48, i32* %3, i32* %50)
  %52 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %53 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %54 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %53, i32 0, i32 4
  %55 = call i32 @mpt3sas_config_get_bios_pg3(%struct.MPT3SAS_ADAPTER* %52, i32* %3, i32* %54)
  %56 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %57 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %58 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %57, i32 0, i32 3
  %59 = call i32 @mpt3sas_config_get_ioc_pg8(%struct.MPT3SAS_ADAPTER* %56, i32* %3, i32* %58)
  %60 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %61 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %62 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %61, i32 0, i32 2
  %63 = call i32 @mpt3sas_config_get_iounit_pg0(%struct.MPT3SAS_ADAPTER* %60, i32* %3, i32* %62)
  %64 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %65 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %66 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %65, i32 0, i32 0
  %67 = call i32 @mpt3sas_config_get_iounit_pg1(%struct.MPT3SAS_ADAPTER* %64, i32* %3, %struct.TYPE_8__* %66)
  %68 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %69 = call i32 @_base_display_ioc_capabilities(%struct.MPT3SAS_ADAPTER* %68)
  %70 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %71 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @le32_to_cpu(i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %76 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MPI2_IOCFACTS_CAPABILITY_TASK_SET_FULL_HANDLING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %47
  %83 = load i32, i32* @MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %4, align 4
  br label %91

87:                                               ; preds = %47
  %88 = load i32, i32* @MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING, align 4
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %82
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @cpu_to_le32(i32 %92)
  %94 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %95 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %98 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %99 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %98, i32 0, i32 0
  %100 = call i32 @mpt3sas_config_set_iounit_pg1(%struct.MPT3SAS_ADAPTER* %97, i32* %3, %struct.TYPE_8__* %99)
  ret void
}

declare dso_local i32 @mpt3sas_config_get_manufacturing_pg0(%struct.MPT3SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt3sas_config_get_manufacturing_pg10(%struct.MPT3SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt3sas_config_get_manufacturing_pg11(%struct.MPT3SAS_ADAPTER*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mpt3sas_config_set_manufacturing_pg11(%struct.MPT3SAS_ADAPTER*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @mpt3sas_config_get_bios_pg2(%struct.MPT3SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt3sas_config_get_bios_pg3(%struct.MPT3SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt3sas_config_get_ioc_pg8(%struct.MPT3SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt3sas_config_get_iounit_pg0(%struct.MPT3SAS_ADAPTER*, i32*, i32*) #1

declare dso_local i32 @mpt3sas_config_get_iounit_pg1(%struct.MPT3SAS_ADAPTER*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @_base_display_ioc_capabilities(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mpt3sas_config_set_iounit_pg1(%struct.MPT3SAS_ADAPTER*, i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
