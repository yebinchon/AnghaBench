; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_wmi.c_wmi_query_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_wmi.c_wmi_query_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32 }
%struct.guid_block = type { i64, i32, i32 }
%struct.wmi_block = type { i32, %struct.guid_block }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { i8* }
%struct.TYPE_2__ = type { i32 }

@AE_ERROR = common dso_local global i32 0, align 4
@__const.wmi_query_block.wc_method = private unnamed_addr constant [5 x i8] c"WC\00\00\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_WMI_EVENT = common dso_local global i32 0, align 4
@ACPI_WMI_METHOD = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@ACPI_WMI_EXPENSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"WQ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_query_block(i8* %0, i64 %1, %struct.acpi_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_buffer*, align 8
  %8 = alloca %struct.guid_block*, align 8
  %9 = alloca %struct.wmi_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.acpi_object_list, align 8
  %15 = alloca %struct.acpi_object_list, align 8
  %16 = alloca [1 x %union.acpi_object], align 8
  %17 = alloca [1 x %union.acpi_object], align 8
  %18 = alloca [5 x i8], align 1
  %19 = alloca [5 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.acpi_buffer* %2, %struct.acpi_buffer** %7, align 8
  store %struct.guid_block* null, %struct.guid_block** %8, align 8
  store %struct.wmi_block* null, %struct.wmi_block** %9, align 8
  %20 = load i32, i32* @AE_ERROR, align 4
  store i32 %20, i32* %13, align 4
  %21 = bitcast [5 x i8]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.wmi_query_block.wc_method, i32 0, i32 0), i64 5, i1 false)
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.acpi_buffer*, %struct.acpi_buffer** %7, align 8
  %26 = icmp ne %struct.acpi_buffer* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24, %3
  %28 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %28, i32* %4, align 4
  br label %134

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @find_guid(i8* %30, %struct.wmi_block** %9)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @AE_ERROR, align 4
  store i32 %34, i32* %4, align 4
  br label %134

35:                                               ; preds = %29
  %36 = load %struct.wmi_block*, %struct.wmi_block** %9, align 8
  %37 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %36, i32 0, i32 1
  store %struct.guid_block* %37, %struct.guid_block** %8, align 8
  %38 = load %struct.wmi_block*, %struct.wmi_block** %9, align 8
  %39 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %10, align 4
  %41 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %42 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %47, i32* %4, align 4
  br label %134

48:                                               ; preds = %35
  %49 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %50 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ACPI_WMI_EVENT, align 4
  %53 = load i32, i32* @ACPI_WMI_METHOD, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @AE_ERROR, align 4
  store i32 %58, i32* %4, align 4
  br label %134

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %14, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %17, i64 0, i64 0
  %62 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %14, i32 0, i32 1
  store %union.acpi_object* %61, %union.acpi_object** %62, align 8
  %63 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %64 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %17, i64 0, i64 0
  %65 = bitcast %union.acpi_object* %64 to i8**
  store i8* %63, i8** %65, align 8
  %66 = load i64, i64* %6, align 8
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %17, i64 0, i64 0
  %69 = bitcast %union.acpi_object* %68 to %struct.TYPE_2__*
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %72 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ACPI_WMI_EXPENSIVE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %59
  %78 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %15, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %16, i64 0, i64 0
  %80 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %15, i32 0, i32 1
  store %union.acpi_object* %79, %union.acpi_object** %80, align 8
  %81 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %82 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %16, i64 0, i64 0
  %83 = bitcast %union.acpi_object* %82 to i8**
  store i8* %81, i8** %83, align 8
  %84 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %16, i64 0, i64 0
  %85 = bitcast %union.acpi_object* %84 to %struct.TYPE_2__*
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %88 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %89 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @strncat(i8* %87, i32 %90, i32 2)
  %92 = load i32, i32* %10, align 4
  %93 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %94 = call i32 @acpi_get_handle(i32 %92, i8* %93, i32* %11)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i64 @ACPI_SUCCESS(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %77
  %99 = load i32, i32* %10, align 4
  %100 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %101 = call i32 @acpi_evaluate_object(i32 %99, i8* %100, %struct.acpi_object_list* %15, %struct.acpi_buffer* null)
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %98, %77
  br label %103

103:                                              ; preds = %102, %59
  %104 = getelementptr inbounds [5 x i8], [5 x i8]* %18, i64 0, i64 0
  %105 = call i32 @strcpy(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %106 = getelementptr inbounds [5 x i8], [5 x i8]* %18, i64 0, i64 0
  %107 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %108 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @strncat(i8* %106, i32 %109, i32 2)
  %111 = load i32, i32* %10, align 4
  %112 = getelementptr inbounds [5 x i8], [5 x i8]* %18, i64 0, i64 0
  %113 = load %struct.acpi_buffer*, %struct.acpi_buffer** %7, align 8
  %114 = call i32 @acpi_evaluate_object(i32 %111, i8* %112, %struct.acpi_object_list* %14, %struct.acpi_buffer* %113)
  store i32 %114, i32* %12, align 4
  %115 = load %struct.guid_block*, %struct.guid_block** %8, align 8
  %116 = getelementptr inbounds %struct.guid_block, %struct.guid_block* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @ACPI_WMI_EXPENSIVE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %103
  %122 = load i32, i32* %13, align 4
  %123 = call i64 @ACPI_SUCCESS(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %16, i64 0, i64 0
  %127 = bitcast %union.acpi_object* %126 to %struct.TYPE_2__*
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load i32, i32* %10, align 4
  %130 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %131 = call i32 @acpi_evaluate_object(i32 %129, i8* %130, %struct.acpi_object_list* %15, %struct.acpi_buffer* null)
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %125, %121, %103
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %57, %46, %33, %27
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @find_guid(i8*, %struct.wmi_block**) #2

declare dso_local i32 @strncat(i8*, i32, i32) #2

declare dso_local i32 @acpi_get_handle(i32, i8*, i32*) #2

declare dso_local i64 @ACPI_SUCCESS(i32) #2

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
