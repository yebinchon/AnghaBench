; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exstorob.c_acpi_ex_store_buffer_to_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exstorob.c_acpi_ex_store_buffer_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@u8 = common dso_local global i32 0, align 4
@buffer = common dso_local global i32 0, align 4
@ex_store_buffer_to_buffer = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AOPOBJ_STATIC_POINTER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Truncating source buffer from %X to %X\0A\00", align 1
@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@original_src_type = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_store_buffer_to_buffer(%union.acpi_operand_object* %0, %union.acpi_operand_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %5, align 8
  %7 = load i32, i32* @u8, align 4
  %8 = load i32, i32* @buffer, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32, i32* @ex_store_buffer_to_buffer, align 4
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, %union.acpi_operand_object* %11)
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %15 = icmp eq %union.acpi_operand_object* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @AE_OK, align 4
  %18 = call i32 @return_ACPI_STATUS(i32 %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @u8, align 4
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %22 = bitcast %union.acpi_operand_object* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ACPI_CAST_PTR(i32 %20, i32 %24)
  store i32 %25, i32* @buffer, align 4
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %27 = bitcast %union.acpi_operand_object* %26 to %struct.TYPE_3__*
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %31 = bitcast %union.acpi_operand_object* %30 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %19
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %37 = bitcast %union.acpi_operand_object* %36 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AOPOBJ_STATIC_POINTER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %35, %19
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @ACPI_ALLOCATE(i64 %44)
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %47 = bitcast %union.acpi_operand_object* %46 to %struct.TYPE_3__*
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %50 = bitcast %union.acpi_operand_object* %49 to %struct.TYPE_3__*
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* @AE_NO_MEMORY, align 4
  %56 = call i32 @return_ACPI_STATUS(i32 %55)
  br label %57

57:                                               ; preds = %54, %43
  %58 = load i64, i64* %6, align 8
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %60 = bitcast %union.acpi_operand_object* %59 to %struct.TYPE_3__*
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  br label %62

62:                                               ; preds = %57, %35
  %63 = load i64, i64* %6, align 8
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %65 = bitcast %union.acpi_operand_object* %64 to %struct.TYPE_3__*
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sle i64 %63, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %62
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %71 = bitcast %union.acpi_operand_object* %70 to %struct.TYPE_3__*
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %75 = bitcast %union.acpi_operand_object* %74 to %struct.TYPE_3__*
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ACPI_MEMSET(i32 %73, i32 0, i64 %77)
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %80 = bitcast %union.acpi_operand_object* %79 to %struct.TYPE_3__*
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @buffer, align 4
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @ACPI_MEMCPY(i32 %82, i32 %83, i64 %84)
  br label %105

86:                                               ; preds = %62
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %88 = bitcast %union.acpi_operand_object* %87 to %struct.TYPE_3__*
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @buffer, align 4
  %92 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %93 = bitcast %union.acpi_operand_object* %92 to %struct.TYPE_3__*
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @ACPI_MEMCPY(i32 %90, i32 %91, i64 %95)
  %97 = load i32, i32* @ACPI_DB_INFO, align 4
  %98 = load i64, i64* %6, align 8
  %99 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %100 = bitcast %union.acpi_operand_object* %99 to %struct.TYPE_3__*
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @ACPI_DEBUG_PRINT(i32 %103)
  br label %105

105:                                              ; preds = %86, %69
  %106 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %107 = bitcast %union.acpi_operand_object* %106 to %struct.TYPE_3__*
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %111 = bitcast %union.acpi_operand_object* %110 to %struct.TYPE_3__*
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 8
  %113 = load i32, i32* @AOPOBJ_STATIC_POINTER, align 4
  %114 = xor i32 %113, -1
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %116 = bitcast %union.acpi_operand_object* %115 to %struct.TYPE_4__*
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, %114
  store i32 %119, i32* %117, align 8
  %120 = load i32, i32* @AE_OK, align 4
  %121 = call i32 @return_ACPI_STATUS(i32 %120)
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_CAST_PTR(i32, i32) #1

declare dso_local i32 @ACPI_ALLOCATE(i64) #1

declare dso_local i32 @ACPI_MEMSET(i32, i32, i64) #1

declare dso_local i32 @ACPI_MEMCPY(i32, i32, i64) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
