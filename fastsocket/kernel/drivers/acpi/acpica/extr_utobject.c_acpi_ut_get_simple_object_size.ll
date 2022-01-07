; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utobject.c_acpi_ut_get_simple_object_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utobject.c_acpi_ut_get_simple_object_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ut_get_simple_object_size = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"Cannot convert to external object - unsupported Reference Class [%s] %X in object %p\00", align 1
@AE_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Cannot convert to external object - unsupported type [%s] %X in object %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_operand_object*, i32*)* @acpi_ut_get_simple_object_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ut_get_simple_object_size(%union.acpi_operand_object* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @ut_get_simple_object_size, align 4
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, %union.acpi_operand_object* %11)
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %14 = icmp ne %union.acpi_operand_object* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  store i32 4, i32* %16, align 4
  %17 = load i32, i32* @AE_OK, align 4
  %18 = call i32 @return_ACPI_STATUS(i32 %17)
  br label %19

19:                                               ; preds = %15, %2
  store i32 4, i32* %6, align 4
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %21 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %20)
  %22 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ACPI_ROUND_UP_TO_NATIVE_WORD(i32 %25)
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @return_ACPI_STATUS(i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %32 = bitcast %union.acpi_operand_object* %31 to %struct.TYPE_8__*
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %85 [
    i32 128, label %35
    i32 133, label %43
    i32 132, label %50
    i32 129, label %50
    i32 130, label %50
    i32 131, label %51
  ]

35:                                               ; preds = %30
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %37 = bitcast %union.acpi_operand_object* %36 to %struct.TYPE_5__*
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %97

43:                                               ; preds = %30
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %45 = bitcast %union.acpi_operand_object* %44 to %struct.TYPE_6__*
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %97

50:                                               ; preds = %30, %30, %30
  br label %97

51:                                               ; preds = %30
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.TYPE_7__*
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %72 [
    i32 134, label %56
  ]

56:                                               ; preds = %51
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %58 = bitcast %union.acpi_operand_object* %57 to %struct.TYPE_7__*
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @acpi_ns_get_pathname_length(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %66 = call i32 @return_ACPI_STATUS(i32 %65)
  br label %67

67:                                               ; preds = %64, %56
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @ACPI_ROUND_UP_TO_NATIVE_WORD(i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %84

72:                                               ; preds = %51
  %73 = load i32, i32* @AE_INFO, align 4
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %75 = call i32 @acpi_ut_get_reference_name(%union.acpi_operand_object* %74)
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.TYPE_7__*
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %81 = ptrtoint %union.acpi_operand_object* %80 to i32
  %82 = call i32 @ACPI_ERROR(i32 %81)
  %83 = load i32, i32* @AE_TYPE, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %72, %67
  br label %97

85:                                               ; preds = %30
  %86 = load i32, i32* @AE_INFO, align 4
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %88 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %87)
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %90 = bitcast %union.acpi_operand_object* %89 to %struct.TYPE_8__*
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %94 = ptrtoint %union.acpi_operand_object* %93 to i32
  %95 = call i32 @ACPI_ERROR(i32 %94)
  %96 = load i32, i32* @AE_TYPE, align 4
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %85, %84, %50, %43, %35
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @ACPI_ROUND_UP_TO_NATIVE_WORD(i32 %98)
  %100 = load i32*, i32** %5, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @return_ACPI_STATUS(i32 %101)
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_ROUND_UP_TO_NATIVE_WORD(i32) #1

declare dso_local i32 @acpi_ns_get_pathname_length(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_reference_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
