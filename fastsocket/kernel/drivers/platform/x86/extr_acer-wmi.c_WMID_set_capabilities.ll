; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_WMID_set_capabilities.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_WMID_set_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@WMID_GUID2 = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@ACER_CAP_WIRELESS = common dso_local global i32 0, align 4
@interface = common dso_local global %struct.TYPE_4__* null, align 8
@ACER_CAP_THREEG = common dso_local global i32 0, align 4
@ACER_CAP_BRIGHTNESS = common dso_local global i32 0, align 4
@ACER_CAP_BLUETOOTH = common dso_local global i32 0, align 4
@max_brightness = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @WMID_set_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WMID_set_capabilities() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.acpi_buffer, align 8
  %3 = alloca %union.acpi_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %2, i32 0, i32 0
  %7 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %6, align 8
  %9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %2, i32 0, i32 1
  store i32* null, i32** %9, align 8
  %10 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %2, i32 0, i32 2
  store i32 0, i32* %10, align 8
  %11 = load i32, i32* @WMID_GUID2, align 4
  %12 = call i32 @wmi_query_block(i32 %11, i32 1, %struct.acpi_buffer* %2)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %1, align 4
  br label %78

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %2, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %union.acpi_object*
  store %union.acpi_object* %21, %union.acpi_object** %3, align 8
  %22 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %23 = icmp ne %union.acpi_object* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %26 = bitcast %union.acpi_object* %25 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %32 = bitcast %union.acpi_object* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %39 = bitcast %union.acpi_object* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %5, align 4
  br label %46

44:                                               ; preds = %30, %24, %18
  %45 = load i32, i32* @AE_ERROR, align 4
  store i32 %45, i32* %1, align 4
  br label %78

46:                                               ; preds = %37
  %47 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @interface, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @ACER_CAP_THREEG, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @interface, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @ACER_CAP_BRIGHTNESS, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @interface, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 16
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %46
  %66 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @interface, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %46
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store i32 9, i32* @max_brightness, align 4
  br label %76

76:                                               ; preds = %75, %71
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %76, %44, %16
  %79 = load i32, i32* %1, align 4
  ret i32 %79
}

declare dso_local i32 @wmi_query_block(i32, i32, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
