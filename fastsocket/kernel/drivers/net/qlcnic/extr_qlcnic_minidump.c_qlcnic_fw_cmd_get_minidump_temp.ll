; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_minidump.c_qlcnic_fw_cmd_get_minidump_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_minidump.c_qlcnic_fw_cmd_get_minidump_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__*, %struct.qlcnic_hardware_context* }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_hardware_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.qlcnic_dump_template_hdr* }
%struct.qlcnic_dump_template_hdr = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Can't get template size %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to get minidump template header %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Template header checksum validation failed\0A\00", align 1
@QLCNIC_DUMP_MASK_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_fw_cmd_get_minidump_temp(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.qlcnic_hardware_context*, align 8
  %10 = alloca %struct.qlcnic_dump_template_hdr*, align 8
  %11 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 1
  %14 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %13, align 8
  store %struct.qlcnic_hardware_context* %14, %struct.qlcnic_hardware_context** %9, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %16 = call i32 @qlcnic_fw_get_minidump_temp_size(%struct.qlcnic_adapter* %15, i64* %6, i64* %5, i64* %11)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %118

28:                                               ; preds = %1
  %29 = load i64, i64* %5, align 8
  %30 = call %struct.qlcnic_dump_template_hdr* @vzalloc(i64 %29)
  %31 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %32 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store %struct.qlcnic_dump_template_hdr* %30, %struct.qlcnic_dump_template_hdr** %33, align 8
  %34 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %35 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.qlcnic_dump_template_hdr*, %struct.qlcnic_dump_template_hdr** %36, align 8
  %38 = icmp ne %struct.qlcnic_dump_template_hdr* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %118

42:                                               ; preds = %28
  %43 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %44 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.qlcnic_dump_template_hdr*, %struct.qlcnic_dump_template_hdr** %45, align 8
  %47 = bitcast %struct.qlcnic_dump_template_hdr* %46 to i64*
  store i64* %47, i64** %8, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %59

51:                                               ; preds = %42
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @__qlcnic_fw_cmd_get_minidump_temp(%struct.qlcnic_adapter* %52, i64* %53, i64 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %50
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @qlcnic_fw_flash_get_minidump_temp(%struct.qlcnic_adapter* %60, i64* %61, i64 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %59
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %4, align 4
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %74 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.qlcnic_dump_template_hdr*, %struct.qlcnic_dump_template_hdr** %75, align 8
  %77 = call i32 @vfree(%struct.qlcnic_dump_template_hdr* %76)
  %78 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %79 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store %struct.qlcnic_dump_template_hdr* null, %struct.qlcnic_dump_template_hdr** %80, align 8
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %118

83:                                               ; preds = %59
  br label %84

84:                                               ; preds = %83, %51
  %85 = load i64*, i64** %8, align 8
  %86 = bitcast i64* %85 to i32*
  %87 = load i64, i64* %5, align 8
  %88 = call i64 @qlcnic_temp_checksum(i32* %86, i64 %87)
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %84
  %92 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = call i32 (i32*, i8*, ...) @dev_err(i32* %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %98 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load %struct.qlcnic_dump_template_hdr*, %struct.qlcnic_dump_template_hdr** %99, align 8
  %101 = call i32 @vfree(%struct.qlcnic_dump_template_hdr* %100)
  %102 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %103 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store %struct.qlcnic_dump_template_hdr* null, %struct.qlcnic_dump_template_hdr** %104, align 8
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %118

107:                                              ; preds = %84
  %108 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %109 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load %struct.qlcnic_dump_template_hdr*, %struct.qlcnic_dump_template_hdr** %110, align 8
  store %struct.qlcnic_dump_template_hdr* %111, %struct.qlcnic_dump_template_hdr** %10, align 8
  %112 = load i32, i32* @QLCNIC_DUMP_MASK_DEF, align 4
  %113 = load %struct.qlcnic_dump_template_hdr*, %struct.qlcnic_dump_template_hdr** %10, align 8
  %114 = getelementptr inbounds %struct.qlcnic_dump_template_hdr, %struct.qlcnic_dump_template_hdr* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %116 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %107, %91, %66, %39, %19
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @qlcnic_fw_get_minidump_temp_size(%struct.qlcnic_adapter*, i64*, i64*, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.qlcnic_dump_template_hdr* @vzalloc(i64) #1

declare dso_local i32 @__qlcnic_fw_cmd_get_minidump_temp(%struct.qlcnic_adapter*, i64*, i64) #1

declare dso_local i32 @qlcnic_fw_flash_get_minidump_temp(%struct.qlcnic_adapter*, i64*, i64) #1

declare dso_local i32 @vfree(%struct.qlcnic_dump_template_hdr*) #1

declare dso_local i64 @qlcnic_temp_checksum(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
