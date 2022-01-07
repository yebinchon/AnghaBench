; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_ppi.c_tpm_store_ppi_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_ppi.c_tpm_store_ppi_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %union.acpi_object* }
%struct.acpi_buffer = type { i32*, i32, i32*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i8* }

@PPI_VERSION_LEN = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@TPM_PPI_FN_VERSION = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ppi_callback = common dso_local global i32 0, align 4
@tpm_device_name = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_DSM\00", align 1
@ACPI_TYPE_STRING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@TPM_PPI_FN_SUBREQ = common dso_local global i32 0, align 4
@TPM_PPI_FN_SUBREQ2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@EPERM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @tpm_store_ppi_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_store_ppi_request(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.acpi_object_list, align 8
  %15 = alloca %struct.acpi_buffer, align 8
  %16 = alloca [4 x %union.acpi_object], align 16
  %17 = alloca %union.acpi_object, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load i32, i32* @PPI_VERSION_LEN, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %15, i32 0, i32 0
  %27 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %26, align 8
  %30 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %15, i32 0, i32 1
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %15, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %15, i32 0, i32 3
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %14, i32 0, i32 0
  store i32 4, i32* %33, align 8
  %34 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %16, i64 0, i64 0
  %35 = load i32, i32* @TPM_PPI_FN_VERSION, align 4
  %36 = call i32 @ppi_assign_params(%union.acpi_object* %34, i32 %35)
  %37 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %16, i64 0, i64 0
  %38 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %14, i32 0, i32 1
  store %union.acpi_object* %37, %union.acpi_object** %38, align 8
  %39 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %40 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %41 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %42 = load i32, i32* @ppi_callback, align 4
  %43 = load i32, i32* @tpm_device_name, align 4
  %44 = call i32 @acpi_walk_namespace(i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32* %12)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i64 @ACPI_FAILURE(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %4
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %154

51:                                               ; preds = %4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @ACPI_TYPE_STRING, align 4
  %54 = call i32 @acpi_evaluate_object_typed(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %14, %struct.acpi_buffer* %15, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i64 @ACPI_FAILURE(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %154

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %15, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to %union.acpi_object*
  %65 = bitcast %union.acpi_object* %64 to %struct.TYPE_5__*
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @PPI_VERSION_LEN, align 4
  %69 = call i32 @strncpy(i8* %25, i32 %67, i32 %68)
  %70 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %15, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @kfree(i32* %71)
  %73 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %74 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %15, i32 0, i32 1
  store i32 %73, i32* %74, align 8
  %75 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %15, i32 0, i32 0
  store i32* null, i32** %75, align 8
  %76 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %83

78:                                               ; preds = %61
  %79 = load i32, i32* @TPM_PPI_FN_SUBREQ, align 4
  %80 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %16, i64 0, i64 2
  %81 = bitcast %union.acpi_object* %80 to %struct.TYPE_8__*
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 16
  br label %88

83:                                               ; preds = %61
  %84 = load i32, i32* @TPM_PPI_FN_SUBREQ2, align 4
  %85 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %16, i64 0, i64 2
  %86 = bitcast %union.acpi_object* %85 to %struct.TYPE_8__*
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 16
  br label %88

88:                                               ; preds = %83, %78
  %89 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %93 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %16, i64 0, i64 3
  %94 = bitcast %union.acpi_object* %93 to i32*
  store i32 %92, i32* %94, align 16
  %95 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %16, i64 0, i64 3
  %96 = bitcast %union.acpi_object* %95 to %struct.TYPE_6__*
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 4, i32* %97, align 16
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @sscanf(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %18)
  %100 = bitcast i32* %18 to i8*
  %101 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %16, i64 0, i64 3
  %102 = bitcast %union.acpi_object* %101 to %struct.TYPE_6__*
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store i8* %100, i8** %103, align 8
  br label %117

104:                                              ; preds = %88
  %105 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %16, i64 0, i64 3
  %106 = bitcast %union.acpi_object* %105 to %struct.TYPE_7__*
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 16
  %108 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %109 = bitcast %union.acpi_object* %17 to i32*
  store i32 %108, i32* %109, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = bitcast %union.acpi_object* %17 to %struct.TYPE_8__*
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = call i32 @sscanf(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %112)
  %114 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %16, i64 0, i64 3
  %115 = bitcast %union.acpi_object* %114 to %struct.TYPE_7__*
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store %union.acpi_object* %17, %union.acpi_object** %116, align 8
  br label %117

117:                                              ; preds = %104, %91
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %120 = call i32 @acpi_evaluate_object_typed(i32 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %14, %struct.acpi_buffer* %15, i32 %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i64 @ACPI_FAILURE(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %154

127:                                              ; preds = %117
  %128 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %15, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = bitcast i32* %129 to %union.acpi_object*
  %131 = bitcast %union.acpi_object* %130 to %struct.TYPE_8__*
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %19, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load i64, i64* %9, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %13, align 4
  br label %149

139:                                              ; preds = %127
  %140 = load i32, i32* %19, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* @EPERM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %13, align 4
  br label %148

145:                                              ; preds = %139
  %146 = load i32, i32* @EFAULT, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %145, %142
  br label %149

149:                                              ; preds = %148, %136
  %150 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %15, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @kfree(i32* %151)
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %154

154:                                              ; preds = %149, %124, %58, %48
  %155 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %155)
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ppi_assign_params(%union.acpi_object*, i32) #2

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32, i32*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @acpi_evaluate_object_typed(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*, i32) #2

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
