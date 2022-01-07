; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_fujitsu-laptop.c_call_fext_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_fujitsu-laptop.c_call_fext_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%union.acpi_object = type { i64 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_buffer = type { i32, %union.acpi_object* }
%struct.TYPE_3__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@fujitsu_hotkey = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"FUNC\00", align 1
@FUJLAPTOP_DBG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"FUNC interface is not present\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@FUJLAPTOP_DBG_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"FUNC 0x%x (args 0x%x, 0x%x, 0x%x) call failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"FUNC 0x%x (args 0x%x, 0x%x, 0x%x) did not return an integer\0A\00", align 1
@FUJLAPTOP_DBG_TRACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"FUNC 0x%x (args 0x%x, 0x%x, 0x%x) returned 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @call_fext_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_fext_func(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x %union.acpi_object], align 16
  %12 = alloca %struct.acpi_object_list, align 8
  %13 = alloca %struct.acpi_buffer, align 8
  %14 = alloca %union.acpi_object, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @AE_OK, align 4
  store i32 %16, i32* %10, align 4
  %17 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %11, i64 0, i64 0
  %18 = bitcast %union.acpi_object* %17 to i64*
  %19 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %17, i64 1
  %21 = bitcast %union.acpi_object* %20 to i64*
  %22 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %20, i64 1
  %24 = bitcast %union.acpi_object* %23 to i64*
  %25 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %23, i64 1
  %27 = bitcast %union.acpi_object* %26 to i64*
  %28 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %12, i32 0, i32 0
  store i32 4, i32* %29, align 8
  %30 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %12, i32 0, i32 1
  %31 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %11, i64 0, i64 0
  store %union.acpi_object* %31, %union.acpi_object** %30, align 8
  store i32* null, i32** %15, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fujitsu_hotkey, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @acpi_get_handle(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32** %15)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @ACPI_FAILURE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %4
  %40 = load i32, i32* @FUJLAPTOP_DBG_ERROR, align 4
  %41 = call i32 (i32, i8*, ...) @vdbg_printk(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %104

44:                                               ; preds = %4
  %45 = load i32, i32* %6, align 4
  %46 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %11, i64 0, i64 0
  %47 = bitcast %union.acpi_object* %46 to %struct.TYPE_3__*
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 16
  %49 = load i32, i32* %7, align 4
  %50 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %11, i64 0, i64 1
  %51 = bitcast %union.acpi_object* %50 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %11, i64 0, i64 2
  %55 = bitcast %union.acpi_object* %54 to %struct.TYPE_3__*
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 16
  %57 = load i32, i32* %9, align 4
  %58 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %11, i64 0, i64 3
  %59 = bitcast %union.acpi_object* %58 to %struct.TYPE_3__*
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  store i32 8, i32* %61, align 8
  %62 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 1
  store %union.acpi_object* %14, %union.acpi_object** %62, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @acpi_evaluate_object(i32* %63, i32* null, %struct.acpi_object_list* %12, %struct.acpi_buffer* %13)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @ACPI_FAILURE(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %44
  %69 = load i32, i32* @FUJLAPTOP_DBG_WARN, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i32, i8*, ...) @vdbg_printk(i32 %69, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %104

77:                                               ; preds = %44
  %78 = bitcast %union.acpi_object* %14 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i32, i32* @FUJLAPTOP_DBG_WARN, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i32, i8*, ...) @vdbg_printk(i32 %83, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %104

91:                                               ; preds = %77
  %92 = load i32, i32* @FUJLAPTOP_DBG_TRACE, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = bitcast %union.acpi_object* %14 to %struct.TYPE_3__*
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, ...) @vdbg_printk(i32 %92, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %93, i32 %94, i32 %95, i32 %96, i32 %99)
  %101 = bitcast %union.acpi_object* %14 to %struct.TYPE_3__*
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %91, %82, %68, %39
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @acpi_get_handle(i32, i8*, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @vdbg_printk(i32, i8*, ...) #1

declare dso_local i32 @acpi_evaluate_object(i32*, i32*, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
