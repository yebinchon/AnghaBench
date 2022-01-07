; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_wmi.c_wmi_set_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_wmi.c_wmi_set_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, i32 }
%struct.guid_block = type { i64, i32, i32 }
%struct.wmi_block = type { i32, %struct.guid_block }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@__const.wmi_set_block.method = private unnamed_addr constant [5 x i8] c"WS\00\00\00", align 1
@AE_BAD_DATA = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_WMI_EVENT = common dso_local global i32 0, align 4
@ACPI_WMI_METHOD = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_WMI_STRING = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_set_block(i8* %0, i64 %1, %struct.acpi_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_buffer*, align 8
  %8 = alloca %struct.guid_block*, align 8
  %9 = alloca %struct.wmi_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_object_list, align 8
  %12 = alloca [2 x %union.acpi_object], align 16
  %13 = alloca [5 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.acpi_buffer* %2, %struct.acpi_buffer** %7, align 8
  store %struct.guid_block* null, %struct.guid_block** %8, align 8
  store %struct.wmi_block* null, %struct.wmi_block** %9, align 8
  %14 = bitcast [5 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.wmi_set_block.method, i32 0, i32 0), i64 5, i1 false)
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.acpi_buffer*, %struct.acpi_buffer** %7, align 8
  %19 = icmp ne %struct.acpi_buffer* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %21, i32* %4, align 4
  br label %98

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @find_guid(i8* %23, %struct.wmi_block** %9)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @AE_ERROR, align 4
  store i32 %27, i32* %4, align 4
  br label %98

28:                                               ; preds = %22
  %29 = load %struct.wmi_block*, %struct.wmi_block** %9, align 8
  %30 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %29, i32 0, i32 1
  store %struct.guid_block* %30, %struct.guid_block** %8, align 8
  %31 = load %struct.wmi_block*, %struct.wmi_block** %9, align 8
  %32 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %35 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %40, i32* %4, align 4
  br label %98

41:                                               ; preds = %28
  %42 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %43 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ACPI_WMI_EVENT, align 4
  %46 = load i32, i32* @ACPI_WMI_METHOD, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @AE_ERROR, align 4
  store i32 %51, i32* %4, align 4
  br label %98

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 0
  store i32 2, i32* %53, align 8
  %54 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %12, i64 0, i64 0
  %55 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %11, i32 0, i32 1
  store %union.acpi_object* %54, %union.acpi_object** %55, align 8
  %56 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %57 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %12, i64 0, i64 0
  %58 = bitcast %union.acpi_object* %57 to i32*
  store i32 %56, i32* %58, align 16
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %12, i64 0, i64 0
  %61 = bitcast %union.acpi_object* %60 to %struct.TYPE_3__*
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 16
  %63 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %64 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ACPI_WMI_STRING, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %52
  %70 = load i32, i32* @ACPI_TYPE_STRING, align 4
  %71 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %12, i64 0, i64 1
  %72 = bitcast %union.acpi_object* %71 to i32*
  store i32 %70, i32* %72, align 8
  br label %77

73:                                               ; preds = %52
  %74 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %75 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %12, i64 0, i64 1
  %76 = bitcast %union.acpi_object* %75 to i32*
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.acpi_buffer*, %struct.acpi_buffer** %7, align 8
  %79 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %12, i64 0, i64 1
  %82 = bitcast %union.acpi_object* %81 to %struct.TYPE_4__*
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.acpi_buffer*, %struct.acpi_buffer** %7, align 8
  %85 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %12, i64 0, i64 1
  %88 = bitcast %union.acpi_object* %87 to %struct.TYPE_4__*
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %91 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %92 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @strncat(i8* %90, i32 %93, i32 2)
  %95 = load i32, i32* %10, align 4
  %96 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %97 = call i32 @acpi_evaluate_object(i32 %95, i8* %96, %struct.acpi_object_list* %11, i32* null)
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %77, %50, %39, %26, %20
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @find_guid(i8*, %struct.wmi_block**) #2

declare dso_local i32 @strncat(i8*, i32, i32) #2

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
