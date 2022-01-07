; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_ppi.c_tpm_show_ppi_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_ppi.c_tpm_show_ppi_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { i64 }
%struct.acpi_buffer = type { i64, i32*, i32 }
%struct.TYPE_3__ = type { %union.acpi_object* }
%struct.TYPE_4__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@TPM_PPI_FN_GETRSP = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ppi_callback = common dso_local global i32 0, align 4
@tpm_device_name = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_DSM\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%llu %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"0: Success\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"0xFFFFFFF0: User Abort\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"0xFFFFFFF1: BIOS Failure\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%llu %llu: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Corresponding TPM error\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%llu: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"No Recent Request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @tpm_show_ppi_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_show_ppi_response(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.acpi_object_list, align 8
  %11 = alloca %struct.acpi_buffer, align 8
  %12 = alloca [4 x %union.acpi_object], align 16
  %13 = alloca %union.acpi_object*, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %16 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 0
  store i32 4, i32* %20, align 8
  %21 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %12, i64 0, i64 0
  %22 = load i32, i32* @TPM_PPI_FN_GETRSP, align 4
  %23 = call i32 @ppi_assign_params(%union.acpi_object* %21, i32 %22)
  %24 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %12, i64 0, i64 0
  %25 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 1
  store %union.acpi_object* %24, %union.acpi_object** %25, align 8
  %26 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %27 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %28 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %29 = load i32, i32* @ppi_callback, align 4
  %30 = load i32, i32* @tpm_device_name, align 4
  %31 = call i32 @acpi_walk_namespace(i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32* %8)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @ACPI_FAILURE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %185

38:                                               ; preds = %3
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %41 = call i32 @acpi_evaluate_object_typed(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %10, %struct.acpi_buffer* %11, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @ACPI_FAILURE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %185

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %union.acpi_object*
  %52 = bitcast %union.acpi_object* %51 to %struct.TYPE_3__*
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %union.acpi_object*, %union.acpi_object** %53, align 8
  store %union.acpi_object* %54, %union.acpi_object** %13, align 8
  %55 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %56 = bitcast %union.acpi_object* %55 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %180

63:                                               ; preds = %48
  %64 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %65 = bitcast %union.acpi_object* %64 to %struct.TYPE_4__*
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EFAULT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  br label %180

72:                                               ; preds = %63
  %73 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %74 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %73, i32 1
  store %union.acpi_object* %74, %union.acpi_object** %13, align 8
  %75 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %76 = bitcast %union.acpi_object* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %180

83:                                               ; preds = %72
  %84 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %85 = bitcast %union.acpi_object* %84 to %struct.TYPE_4__*
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %171

89:                                               ; preds = %83
  %90 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %91 = bitcast %union.acpi_object* %90 to %struct.TYPE_4__*
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %14, align 4
  %94 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %95 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %94, i32 1
  store %union.acpi_object* %95, %union.acpi_object** %13, align 8
  %96 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %97 = bitcast %union.acpi_object* %96 to i64*
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %89
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %9, align 4
  br label %180

104:                                              ; preds = %89
  %105 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %106 = bitcast %union.acpi_object* %105 to %struct.TYPE_4__*
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %111, i32 %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %114, i32* %9, align 4
  br label %170

115:                                              ; preds = %104
  %116 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %117 = bitcast %union.acpi_object* %116 to %struct.TYPE_4__*
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, -16
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* @PAGE_SIZE, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %122, i32 %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 %125, i32* %9, align 4
  br label %169

126:                                              ; preds = %115
  %127 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %128 = bitcast %union.acpi_object* %127 to %struct.TYPE_4__*
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, -15
  br i1 %131, label %132, label %137

132:                                              ; preds = %126
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %133, i32 %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 %136, i32* %9, align 4
  br label %168

137:                                              ; preds = %126
  %138 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %139 = bitcast %union.acpi_object* %138 to %struct.TYPE_4__*
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp sge i32 %141, 1
  br i1 %142, label %143, label %158

143:                                              ; preds = %137
  %144 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %145 = bitcast %union.acpi_object* %144 to %struct.TYPE_4__*
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp sle i32 %147, 4095
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = load i8*, i8** %7, align 8
  %151 = load i32, i32* @PAGE_SIZE, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %154 = bitcast %union.acpi_object* %153 to %struct.TYPE_4__*
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %150, i32 %151, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %152, i32 %156, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 %157, i32* %9, align 4
  br label %167

158:                                              ; preds = %143, %137
  %159 = load i8*, i8** %7, align 8
  %160 = load i32, i32* @PAGE_SIZE, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %163 = bitcast %union.acpi_object* %162 to %struct.TYPE_4__*
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %159, i32 %160, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %161, i32 %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %158, %149
  br label %168

168:                                              ; preds = %167, %132
  br label %169

169:                                              ; preds = %168, %121
  br label %170

170:                                              ; preds = %169, %110
  br label %179

171:                                              ; preds = %83
  %172 = load i8*, i8** %7, align 8
  %173 = load i32, i32* @PAGE_SIZE, align 4
  %174 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %175 = bitcast %union.acpi_object* %174 to %struct.TYPE_4__*
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %172, i32 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %177, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %171, %170
  br label %180

180:                                              ; preds = %179, %101, %80, %69, %60
  %181 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @kfree(i64 %182)
  %184 = load i32, i32* %9, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %180, %45, %35
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @ppi_assign_params(%union.acpi_object*, i32) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_evaluate_object_typed(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
