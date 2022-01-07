; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_ppi.c_show_ppi_operations.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_ppi.c_show_ppi_operations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %union.acpi_object* }
%struct.acpi_buffer = type { i8*, i32*, i8*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@PPI_VERSION_LEN = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"Not implemented\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"BIOS only\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Blocked for OS by BIOS\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"User required\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"User not required\00", align 1
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
@EPERM = common dso_local global i32 0, align 4
@TPM_PPI_FN_GETOPR = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"%d %d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @show_ppi_operations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_ppi_operations(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.acpi_object_list, align 8
  %14 = alloca %struct.acpi_buffer, align 8
  %15 = alloca [4 x %union.acpi_object], align 16
  %16 = alloca %union.acpi_object, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [5 x i8*], align 16
  %20 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i32, i32* @PPI_VERSION_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = bitcast %struct.acpi_buffer* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 32, i1 false)
  %27 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 0
  %28 = load i8*, i8** @ACPI_ALLOCATE_BUFFER, align 8
  store i8* %28, i8** %27, align 8
  %29 = bitcast [5 x i8*]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 40, i1 false)
  %30 = bitcast i8* %29 to [5 x i8*]*
  %31 = getelementptr inbounds [5 x i8*], [5 x i8*]* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8** %31, align 16
  %32 = getelementptr inbounds [5 x i8*], [5 x i8*]* %30, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8** %32, align 8
  %33 = getelementptr inbounds [5 x i8*], [5 x i8*]* %30, i32 0, i32 2
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8** %33, align 16
  %34 = getelementptr inbounds [5 x i8*], [5 x i8*]* %30, i32 0, i32 3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8** %34, align 8
  %35 = getelementptr inbounds [5 x i8*], [5 x i8*]* %30, i32 0, i32 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %35, align 16
  %36 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %13, i32 0, i32 0
  store i32 4, i32* %36, align 8
  %37 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %15, i64 0, i64 0
  %38 = load i32, i32* @TPM_PPI_FN_VERSION, align 4
  %39 = call i32 @ppi_assign_params(%union.acpi_object* %37, i32 %38)
  %40 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %15, i64 0, i64 0
  %41 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %13, i32 0, i32 1
  store %union.acpi_object* %40, %union.acpi_object** %41, align 8
  %42 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %43 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %44 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %45 = load i32, i32* @ppi_callback, align 4
  %46 = load i32, i32* @tpm_device_name, align 4
  %47 = call i32 @acpi_walk_namespace(i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32* %11)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @ACPI_FAILURE(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %3
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %159

54:                                               ; preds = %3
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @ACPI_TYPE_STRING, align 4
  %57 = call i32 @acpi_evaluate_object_typed(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.acpi_object_list* %13, %struct.acpi_buffer* %14, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i64 @ACPI_FAILURE(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %159

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = bitcast i32* %66 to %union.acpi_object*
  %68 = bitcast %union.acpi_object* %67 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @PPI_VERSION_LEN, align 4
  %72 = call i32 @strncpy(i8* %25, i32 %70, i32 %71)
  %73 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @kfree(i32* %74)
  %76 = load i8*, i8** @ACPI_ALLOCATE_BUFFER, align 8
  %77 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 2
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 1
  store i32* null, i32** %78, align 8
  %79 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %64
  %82 = load i32, i32* @EPERM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %159

84:                                               ; preds = %64
  %85 = load i32, i32* @TPM_PPI_FN_GETOPR, align 4
  %86 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %15, i64 0, i64 2
  %87 = bitcast %union.acpi_object* %86 to %struct.TYPE_6__*
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 16
  %89 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %15, i64 0, i64 3
  %90 = bitcast %union.acpi_object* %89 to %struct.TYPE_5__*
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 16
  %92 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %93 = bitcast %union.acpi_object* %16 to i32*
  store i32 %92, i32* %93, align 8
  %94 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %15, i64 0, i64 3
  %95 = bitcast %union.acpi_object* %94 to %struct.TYPE_5__*
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store %union.acpi_object* %16, %union.acpi_object** %96, align 8
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %17, align 4
  br label %98

98:                                               ; preds = %149, %84
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %152

102:                                              ; preds = %98
  %103 = load i32, i32* %17, align 4
  %104 = bitcast %union.acpi_object* %16 to %struct.TYPE_6__*
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %108 = call i32 @acpi_evaluate_object_typed(i32 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.acpi_object_list* %13, %struct.acpi_buffer* %14, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i64 @ACPI_FAILURE(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %102
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %159

115:                                              ; preds = %102
  %116 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = bitcast i32* %117 to %union.acpi_object*
  %119 = bitcast %union.acpi_object* %118 to %struct.TYPE_6__*
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %115
  %125 = load i32, i32* %18, align 4
  %126 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i64 0, i64 0
  %127 = call i32 @ARRAY_SIZE(i8** %126)
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load i8*, i8** %8, align 8
  %131 = load i32, i32* @PAGE_SIZE, align 4
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i64 0, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @scnprintf(i8* %130, i32 %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %132, i32 %133, i8* %137)
  %139 = load i8*, i8** %8, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %8, align 8
  br label %142

142:                                              ; preds = %129, %124, %115
  %143 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @kfree(i32* %144)
  %146 = load i8*, i8** @ACPI_ALLOCATE_BUFFER, align 8
  %147 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 2
  store i8* %146, i8** %147, align 8
  %148 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %14, i32 0, i32 1
  store i32* null, i32** %148, align 8
  br label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %17, align 4
  br label %98

152:                                              ; preds = %98
  %153 = load i8*, i8** %8, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %159

159:                                              ; preds = %152, %112, %81, %61, %51
  %160 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %4, align 4
  ret i32 %161
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

declare dso_local i32 @kfree(i32*) #3

declare dso_local i32 @strcmp(i8*, i8*) #3

declare dso_local i32 @ARRAY_SIZE(i8**) #3

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, i8*) #3

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
