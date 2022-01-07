; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_wmi.c_wmi_evaluate_method.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_wmi.c_wmi_evaluate_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, i32 }
%struct.guid_block = type { i32, i64, i32 }
%struct.wmi_block = type { i32, %struct.guid_block }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { i8* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@__const.wmi_evaluate_method.method = private unnamed_addr constant [5 x i8] c"WM\00\00\00", align 1
@AE_ERROR = common dso_local global i32 0, align 4
@ACPI_WMI_METHOD = common dso_local global i32 0, align 4
@AE_BAD_DATA = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@ACPI_WMI_STRING = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i8* null, align 8
@ACPI_TYPE_BUFFER = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_evaluate_method(i8* %0, i64 %1, i64 %2, %struct.acpi_buffer* %3, %struct.acpi_buffer* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.acpi_buffer*, align 8
  %11 = alloca %struct.acpi_buffer*, align 8
  %12 = alloca %struct.guid_block*, align 8
  %13 = alloca %struct.wmi_block*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.acpi_object_list, align 8
  %17 = alloca [3 x %union.acpi_object], align 16
  %18 = alloca [5 x i8], align 1
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.acpi_buffer* %3, %struct.acpi_buffer** %10, align 8
  store %struct.acpi_buffer* %4, %struct.acpi_buffer** %11, align 8
  store %struct.guid_block* null, %struct.guid_block** %12, align 8
  store %struct.wmi_block* null, %struct.wmi_block** %13, align 8
  %19 = bitcast [5 x i8]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.wmi_evaluate_method.method, i32 0, i32 0), i64 5, i1 false)
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @find_guid(i8* %20, %struct.wmi_block** %13)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @AE_ERROR, align 4
  store i32 %24, i32* %6, align 4
  br label %107

25:                                               ; preds = %5
  %26 = load %struct.wmi_block*, %struct.wmi_block** %13, align 8
  %27 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %26, i32 0, i32 1
  store %struct.guid_block* %27, %struct.guid_block** %12, align 8
  %28 = load %struct.wmi_block*, %struct.wmi_block** %13, align 8
  %29 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  %31 = load %struct.guid_block*, %struct.guid_block** %12, align 8
  %32 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ACPI_WMI_METHOD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %38, i32* %6, align 4
  br label %107

39:                                               ; preds = %25
  %40 = load %struct.guid_block*, %struct.guid_block** %12, align 8
  %41 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %46, i32* %6, align 4
  br label %107

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %16, i32 0, i32 0
  store i32 2, i32* %48, align 8
  %49 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %17, i64 0, i64 0
  %50 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %16, i32 0, i32 1
  store %union.acpi_object* %49, %union.acpi_object** %50, align 8
  %51 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %52 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %17, i64 0, i64 0
  %53 = bitcast %union.acpi_object* %52 to i8**
  store i8* %51, i8** %53, align 16
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %17, i64 0, i64 0
  %56 = bitcast %union.acpi_object* %55 to %struct.TYPE_3__*
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 16
  %58 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %59 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %17, i64 0, i64 1
  %60 = bitcast %union.acpi_object* %59 to i8**
  store i8* %58, i8** %60, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %17, i64 0, i64 1
  %63 = bitcast %union.acpi_object* %62 to %struct.TYPE_3__*
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load %struct.acpi_buffer*, %struct.acpi_buffer** %10, align 8
  %66 = icmp ne %struct.acpi_buffer* %65, null
  br i1 %66, label %67, label %96

67:                                               ; preds = %47
  %68 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %16, i32 0, i32 0
  store i32 3, i32* %68, align 8
  %69 = load %struct.guid_block*, %struct.guid_block** %12, align 8
  %70 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ACPI_WMI_STRING, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i8*, i8** @ACPI_TYPE_STRING, align 8
  %77 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %17, i64 0, i64 2
  %78 = bitcast %union.acpi_object* %77 to i8**
  store i8* %76, i8** %78, align 16
  br label %83

79:                                               ; preds = %67
  %80 = load i8*, i8** @ACPI_TYPE_BUFFER, align 8
  %81 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %17, i64 0, i64 2
  %82 = bitcast %union.acpi_object* %81 to i8**
  store i8* %80, i8** %82, align 16
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.acpi_buffer*, %struct.acpi_buffer** %10, align 8
  %85 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %17, i64 0, i64 2
  %88 = bitcast %union.acpi_object* %87 to %struct.TYPE_4__*
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load %struct.acpi_buffer*, %struct.acpi_buffer** %10, align 8
  %91 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %17, i64 0, i64 2
  %94 = bitcast %union.acpi_object* %93 to %struct.TYPE_4__*
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 16
  br label %96

96:                                               ; preds = %83, %47
  %97 = getelementptr inbounds [5 x i8], [5 x i8]* %18, i64 0, i64 0
  %98 = load %struct.guid_block*, %struct.guid_block** %12, align 8
  %99 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @strncat(i8* %97, i32 %100, i32 2)
  %102 = load i32, i32* %14, align 4
  %103 = getelementptr inbounds [5 x i8], [5 x i8]* %18, i64 0, i64 0
  %104 = load %struct.acpi_buffer*, %struct.acpi_buffer** %11, align 8
  %105 = call i32 @acpi_evaluate_object(i32 %102, i8* %103, %struct.acpi_object_list* %16, %struct.acpi_buffer* %104)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %96, %45, %37, %23
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @find_guid(i8*, %struct.wmi_block**) #2

declare dso_local i32 @strncat(i8*, i32, i32) #2

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
