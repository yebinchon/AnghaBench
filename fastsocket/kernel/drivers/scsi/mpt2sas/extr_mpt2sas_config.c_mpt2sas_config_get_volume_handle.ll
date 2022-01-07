; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_config.c_mpt2sas_config_get_volume_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_config.c_mpt2sas_config_get_volume_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT2SAS_ADAPTER = type { i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@MPI2_FUNCTION_CONFIG = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI2_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@MPI2_CONFIG_EXTPAGETYPE_RAID_CONFIG = common dso_local global i32 0, align 4
@MPI2_RAIDCONFIG0_PAGEVERSION = common dso_local global i32 0, align 4
@MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MPI2_RAID_PGAD_FORM_GET_NEXT_CONFIGNUM = common dso_local global i64 0, align 8
@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@MPI2_RAIDCONFIG0_EFLAGS_MASK_ELEMENT_TYPE = common dso_local global i32 0, align 4
@MPI2_RAIDCONFIG0_EFLAGS_VOL_PHYS_DISK_ELEMENT = common dso_local global i32 0, align 4
@MPI2_RAIDCONFIG0_EFLAGS_OCE_ELEMENT = common dso_local global i32 0, align 4
@MPI2_RAIDCONFIG0_EFLAGS_HOT_SPARE_ELEMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt2sas_config_get_volume_handle(%struct.MPT2SAS_ADAPTER* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca %struct.TYPE_16__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.MPT2SAS_ADAPTER* %0, %struct.MPT2SAS_ADAPTER** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  %17 = load i32*, i32** %6, align 8
  store i32 0, i32* %17, align 4
  %18 = call i32 @memset(%struct.TYPE_15__* %8, i32 0, i32 40)
  %19 = load i32, i32* @MPI2_FUNCTION_CONFIG, align 4
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 5
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_HEADER, align 4
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @MPI2_CONFIG_PAGETYPE_EXTENDED, align 4
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @MPI2_CONFIG_EXTPAGETYPE_RAID_CONFIG, align 4
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @MPI2_RAIDCONFIG0_PAGEVERSION, align 4
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  %35 = call i32 @mpt2sas_base_build_zero_len_sge(%struct.MPT2SAS_ADAPTER* %33, i32* %34)
  %36 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %4, align 8
  %37 = load i32, i32* @MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %38 = call i32 @_config_request(%struct.MPT2SAS_ADAPTER* %36, %struct.TYPE_15__* %8, %struct.TYPE_16__* %9, i32 %37, %struct.TYPE_14__* null, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  br label %147

42:                                               ; preds = %3
  %43 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  %48 = mul nsw i32 %47, 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.TYPE_14__* @kmalloc(i32 %49, i32 %50)
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %7, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %53 = icmp ne %struct.TYPE_14__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  store i32 -1, i32* %10, align 4
  br label %147

55:                                               ; preds = %42
  store i32 255, i32* %14, align 4
  br label %56

56:                                               ; preds = %55, %143
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @MPI2_RAID_PGAD_FORM_GET_NEXT_CONFIGNUM, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @cpu_to_le32(i64 %60)
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %4, align 8
  %64 = load i32, i32* @MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @_config_request(%struct.MPT2SAS_ADAPTER* %63, %struct.TYPE_15__* %8, %struct.TYPE_16__* %9, i32 %64, %struct.TYPE_14__* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %147

71:                                               ; preds = %56
  store i32 -1, i32* %10, align 4
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %147

81:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %140, %81
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %143

88:                                               ; preds = %82
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le16_to_cpu(i32 %96)
  %98 = load i32, i32* @MPI2_RAIDCONFIG0_EFLAGS_MASK_ELEMENT_TYPE, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @MPI2_RAIDCONFIG0_EFLAGS_VOL_PHYS_DISK_ELEMENT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %88
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @MPI2_RAIDCONFIG0_EFLAGS_OCE_ELEMENT, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %103, %88
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le16_to_cpu(i32 %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %107
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @le16_to_cpu(i32 %128)
  %130 = load i32*, i32** %6, align 8
  store i32 %129, i32* %130, align 4
  store i32 0, i32* %10, align 4
  br label %147

131:                                              ; preds = %107
  br label %139

132:                                              ; preds = %103
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* @MPI2_RAIDCONFIG0_EFLAGS_HOT_SPARE_ELEMENT, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32*, i32** %6, align 8
  store i32 0, i32* %137, align 4
  store i32 0, i32* %10, align 4
  br label %147

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %131
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %82

143:                                              ; preds = %82
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %14, align 4
  br label %56

147:                                              ; preds = %136, %120, %80, %70, %54, %41
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %149 = call i32 @kfree(%struct.TYPE_14__* %148)
  %150 = load i32, i32* %10, align 4
  ret i32 %150
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @mpt2sas_base_build_zero_len_sge(%struct.MPT2SAS_ADAPTER*, i32*) #1

declare dso_local i32 @_config_request(%struct.MPT2SAS_ADAPTER*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_14__* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
