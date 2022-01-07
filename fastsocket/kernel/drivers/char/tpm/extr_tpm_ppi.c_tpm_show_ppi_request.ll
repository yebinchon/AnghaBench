; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_ppi.c_tpm_show_ppi_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_ppi.c_tpm_show_ppi_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { i64 }
%struct.acpi_buffer = type { i64, i32*, i32 }
%struct.TYPE_3__ = type { %union.acpi_object* }
%struct.TYPE_4__ = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@TPM_PPI_FN_GETREQ = common dso_local global i32 0, align 4
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
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @tpm_show_ppi_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_show_ppi_request(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
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
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %15 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %14, align 8
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 0
  store i32 4, i32* %19, align 8
  %20 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %12, i64 0, i64 0
  %21 = load i32, i32* @TPM_PPI_FN_GETREQ, align 4
  %22 = call i32 @ppi_assign_params(%union.acpi_object* %20, i32 %21)
  %23 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %12, i64 0, i64 0
  %24 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 1
  store %union.acpi_object* %23, %union.acpi_object** %24, align 8
  %25 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %26 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %27 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %28 = load i32, i32* @ppi_callback, align 4
  %29 = load i32, i32* @tpm_device_name, align 4
  %30 = call i32 @acpi_walk_namespace(i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32* %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @ACPI_FAILURE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %97

37:                                               ; preds = %3
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %40 = call i32 @acpi_evaluate_object_typed(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %10, %struct.acpi_buffer* %11, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @ACPI_FAILURE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %97

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %union.acpi_object*
  %51 = bitcast %union.acpi_object* %50 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %union.acpi_object*, %union.acpi_object** %52, align 8
  store %union.acpi_object* %53, %union.acpi_object** %13, align 8
  %54 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %55 = bitcast %union.acpi_object* %54 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %47
  %60 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %61 = bitcast %union.acpi_object* %60 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %92

68:                                               ; preds = %59
  %69 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %70 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %69, i32 1
  store %union.acpi_object* %70, %union.acpi_object** %13, align 8
  %71 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %72 = bitcast %union.acpi_object* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %80 = bitcast %union.acpi_object* %79 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @scnprintf(i8* %77, i32 %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  store i32 %83, i32* %9, align 4
  br label %87

84:                                               ; preds = %68
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %84, %76
  br label %91

88:                                               ; preds = %47
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %88, %87
  br label %92

92:                                               ; preds = %91, %65
  %93 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @kfree(i64 %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %92, %44, %34
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @ppi_assign_params(%union.acpi_object*, i32) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_evaluate_object_typed(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
