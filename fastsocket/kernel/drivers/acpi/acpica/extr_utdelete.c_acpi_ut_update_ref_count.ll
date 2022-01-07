; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_update_ref_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_update_ref_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ut_update_ref_count = common dso_local global i32 0, align 4
@ACPI_DB_ALLOCATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Obj %p Refs=%X, [Incremented]\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Obj %p Refs=%X, can't decrement! (Set to 0)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Obj %p Refs=%X, [Decremented]\0A\00", align 1
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Method Obj %p Refs=%X, [Decremented]\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Obj %p Refs=%X, Force delete! (Set to 0)\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Unknown action (%X)\00", align 1
@ACPI_MAX_REFERENCE_COUNT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Large Reference Count (%X) in object %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.acpi_operand_object*, i32)* @acpi_ut_update_ref_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ut_update_ref_count(%union.acpi_operand_object* %0, i32 %1) #0 {
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @ut_update_ref_count, align 4
  %8 = call i32 @ACPI_FUNCTION_NAME(i32 %7)
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %10 = icmp ne %union.acpi_operand_object* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %93

12:                                               ; preds = %2
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %14 = bitcast %union.acpi_operand_object* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %79 [
    i32 128, label %19
    i32 130, label %30
    i32 129, label %68
  ]

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %24 = bitcast %union.acpi_operand_object* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ACPI_DEBUG_PRINT(i32 %28)
  br label %83

30:                                               ; preds = %12
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ACPI_DEBUG_PRINT(i32 %36)
  store i32 0, i32* %6, align 4
  br label %45

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ACPI_DEBUG_PRINT(i32 %43)
  br label %45

45:                                               ; preds = %38, %33
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %47 = bitcast %union.acpi_operand_object* %46 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @ACPI_DEBUG_PRINT(i32 %55)
  br label %57

57:                                               ; preds = %52, %45
  %58 = load i32, i32* %6, align 4
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %60 = bitcast %union.acpi_operand_object* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %66 = call i32 @acpi_ut_delete_internal_obj(%union.acpi_operand_object* %65)
  br label %67

67:                                               ; preds = %64, %57
  br label %83

68:                                               ; preds = %12
  %69 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @ACPI_DEBUG_PRINT(i32 %71)
  store i32 0, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %75 = bitcast %union.acpi_operand_object* %74 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %78 = call i32 @acpi_ut_delete_internal_obj(%union.acpi_operand_object* %77)
  br label %83

79:                                               ; preds = %12
  %80 = load i32, i32* @AE_INFO, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @ACPI_ERROR(i32 %81)
  br label %83

83:                                               ; preds = %79, %68, %67, %19
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @ACPI_MAX_REFERENCE_COUNT, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32, i32* @AE_INFO, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %91 = ptrtoint %union.acpi_operand_object* %90 to i32
  %92 = call i32 @ACPI_WARNING(i32 %91)
  br label %93

93:                                               ; preds = %11, %87, %83
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_delete_internal_obj(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
