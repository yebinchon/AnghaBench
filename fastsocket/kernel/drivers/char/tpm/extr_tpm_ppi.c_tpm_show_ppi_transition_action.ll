; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_ppi.c_tpm_show_ppi_transition_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_ppi.c_tpm_show_ppi_transition_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i64 }
%struct.acpi_buffer = type { i32*, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@PPI_VERSION_LEN = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Shutdown\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Reboot\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"OS Vendor-specific\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@TPM_PPI_FN_VERSION = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ppi_callback = common dso_local global i32 0, align 4
@tpm_device_name = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"_DSM\00", align 1
@ACPI_TYPE_STRING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@TPM_PPI_FN_GETACT = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @tpm_show_ppi_transition_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_show_ppi_transition_action(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.acpi_object_list, align 8
  %13 = alloca %struct.acpi_buffer, align 8
  %14 = alloca [4 x %union.acpi_object], align 16
  %15 = alloca i32, align 4
  %16 = alloca [5 x i8*], align 16
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i32, i32* @PPI_VERSION_LEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  %24 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %23, align 8
  %27 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 3
  store i32 0, i32* %29, align 8
  %30 = bitcast [5 x i8*]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 40, i1 false)
  %31 = bitcast i8* %30 to [5 x i8*]*
  %32 = getelementptr inbounds [5 x i8*], [5 x i8*]* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %32, align 16
  %33 = getelementptr inbounds [5 x i8*], [5 x i8*]* %31, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8** %33, align 8
  %34 = getelementptr inbounds [5 x i8*], [5 x i8*]* %31, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** %34, align 16
  %35 = getelementptr inbounds [5 x i8*], [5 x i8*]* %31, i32 0, i32 3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8** %35, align 8
  %36 = getelementptr inbounds [5 x i8*], [5 x i8*]* %31, i32 0, i32 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8** %36, align 16
  %37 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %12, i32 0, i32 0
  store i32 4, i32* %37, align 8
  %38 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 0
  %39 = load i32, i32* @TPM_PPI_FN_VERSION, align 4
  %40 = call i32 @ppi_assign_params(%union.acpi_object* %38, i32 %39)
  %41 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 0
  %42 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %12, i32 0, i32 1
  store %union.acpi_object* %41, %union.acpi_object** %42, align 8
  %43 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %44 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %45 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %46 = load i32, i32* @ppi_callback, align 4
  %47 = load i32, i32* @tpm_device_name, align 4
  %48 = call i32 @acpi_walk_namespace(i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32* %10)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @ACPI_FAILURE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %143

55:                                               ; preds = %3
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @ACPI_TYPE_STRING, align 4
  %58 = call i32 @acpi_evaluate_object_typed(i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.acpi_object_list* %12, %struct.acpi_buffer* %13, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i64 @ACPI_FAILURE(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %143

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = bitcast i32* %67 to %union.acpi_object*
  %69 = bitcast %union.acpi_object* %68 to %struct.TYPE_4__*
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PPI_VERSION_LEN, align 4
  %73 = call i32 @strncpy(i8* %22, i32 %71, i32 %72)
  %74 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %86

76:                                               ; preds = %65
  %77 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %78 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 3
  %79 = bitcast %union.acpi_object* %78 to i32*
  store i32 %77, i32* %79, align 16
  %80 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 3
  %81 = bitcast %union.acpi_object* %80 to %struct.TYPE_5__*
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 3
  %84 = bitcast %union.acpi_object* %83 to %struct.TYPE_5__*
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32* null, i32** %85, align 16
  br label %86

86:                                               ; preds = %76, %65
  %87 = load i32, i32* @TPM_PPI_FN_GETACT, align 4
  %88 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 2
  %89 = bitcast %union.acpi_object* %88 to %struct.TYPE_6__*
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 16
  %91 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @kfree(i32* %92)
  %94 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %95 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 1
  store i32 %94, i32* %95, align 8
  %96 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  store i32* null, i32** %96, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %99 = call i32 @acpi_evaluate_object_typed(i32 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.acpi_object_list* %12, %struct.acpi_buffer* %13, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i64 @ACPI_FAILURE(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %86
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %143

106:                                              ; preds = %86
  %107 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = bitcast i32* %108 to %union.acpi_object*
  %110 = bitcast %union.acpi_object* %109 to %struct.TYPE_6__*
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i64 0, i64 0
  %115 = call i32 @ARRAY_SIZE(i8** %114)
  %116 = sub nsw i32 %115, 1
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %106
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* @PAGE_SIZE, align 4
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i64 0, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @scnprintf(i8* %119, i32 %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %121, i8* %125)
  store i32 %126, i32* %11, align 4
  br label %138

127:                                              ; preds = %106
  %128 = load i8*, i8** %7, align 8
  %129 = load i32, i32* @PAGE_SIZE, align 4
  %130 = load i32, i32* %15, align 4
  %131 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i64 0, i64 0
  %132 = call i32 @ARRAY_SIZE(i8** %131)
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i64 0, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @scnprintf(i8* %128, i32 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %130, i8* %136)
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %127, %118
  %139 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @kfree(i32* %140)
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %143

143:                                              ; preds = %138, %103, %62, %52
  %144 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ppi_assign_params(%union.acpi_object*, i32) #3

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32, i32*) #3

declare dso_local i64 @ACPI_FAILURE(i32) #3

declare dso_local i32 @acpi_evaluate_object_typed(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*, i32) #3

declare dso_local i32 @strncpy(i8*, i32, i32) #3

declare dso_local i32 @strcmp(i8*, i8*) #3

declare dso_local i32 @kfree(i32*) #3

declare dso_local i32 @ARRAY_SIZE(i8**) #3

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
