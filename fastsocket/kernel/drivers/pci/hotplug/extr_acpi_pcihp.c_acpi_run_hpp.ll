; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpi_pcihp.c_acpi_run_hpp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpi_pcihp.c_acpi_run_hpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_params = type { %struct.TYPE_5__*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }
%struct.TYPE_6__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_HPP\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.hotplug_params*)* @acpi_run_hpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_run_hpp(i32 %0, %struct.hotplug_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hotplug_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_buffer, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.hotplug_params* %1, %struct.hotplug_params** %5, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %12 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %11, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = load %struct.hotplug_params*, %struct.hotplug_params** %5, align 8
  %17 = call i32 @memset(%struct.hotplug_params* %16, i32 0, i32 32)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @acpi_evaluate_object(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %7)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %115

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %union.acpi_object*
  store %union.acpi_object* %28, %union.acpi_object** %8, align 8
  %29 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %30 = bitcast %union.acpi_object* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %25
  %35 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %36 = bitcast %union.acpi_object* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %25
  %41 = load i32, i32* @AE_ERROR, align 4
  store i32 %41, i32* %6, align 4
  br label %110

42:                                               ; preds = %34
  %43 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %44 = bitcast %union.acpi_object* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %union.acpi_object*, %union.acpi_object** %45, align 8
  store %union.acpi_object* %46, %union.acpi_object** %9, align 8
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %62, %42
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %51, i64 %53
  %55 = bitcast %union.acpi_object* %54 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @AE_ERROR, align 4
  store i32 %60, i32* %6, align 4
  br label %110

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %47

65:                                               ; preds = %47
  %66 = load %struct.hotplug_params*, %struct.hotplug_params** %5, align 8
  %67 = getelementptr inbounds %struct.hotplug_params, %struct.hotplug_params* %66, i32 0, i32 1
  %68 = load %struct.hotplug_params*, %struct.hotplug_params** %5, align 8
  %69 = getelementptr inbounds %struct.hotplug_params, %struct.hotplug_params* %68, i32 0, i32 0
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %69, align 8
  %70 = load %struct.hotplug_params*, %struct.hotplug_params** %5, align 8
  %71 = getelementptr inbounds %struct.hotplug_params, %struct.hotplug_params* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %75 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %74, i64 0
  %76 = bitcast %union.acpi_object* %75 to %struct.TYPE_6__*
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.hotplug_params*, %struct.hotplug_params** %5, align 8
  %80 = getelementptr inbounds %struct.hotplug_params, %struct.hotplug_params* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  store i32 %78, i32* %82, align 4
  %83 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %84 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %83, i64 1
  %85 = bitcast %union.acpi_object* %84 to %struct.TYPE_6__*
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.hotplug_params*, %struct.hotplug_params** %5, align 8
  %89 = getelementptr inbounds %struct.hotplug_params, %struct.hotplug_params* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  store i32 %87, i32* %91, align 4
  %92 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %93 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %92, i64 2
  %94 = bitcast %union.acpi_object* %93 to %struct.TYPE_6__*
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.hotplug_params*, %struct.hotplug_params** %5, align 8
  %98 = getelementptr inbounds %struct.hotplug_params, %struct.hotplug_params* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  store i32 %96, i32* %100, align 4
  %101 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %102 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %101, i64 3
  %103 = bitcast %union.acpi_object* %102 to %struct.TYPE_6__*
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.hotplug_params*, %struct.hotplug_params** %5, align 8
  %107 = getelementptr inbounds %struct.hotplug_params, %struct.hotplug_params* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 4
  br label %110

110:                                              ; preds = %65, %59, %40
  %111 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @kfree(i64 %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %110, %23
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @memset(%struct.hotplug_params*, i32, i32) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
