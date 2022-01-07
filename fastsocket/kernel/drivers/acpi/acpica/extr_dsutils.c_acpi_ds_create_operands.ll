; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsutils.c_acpi_ds_create_operands.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsutils.c_acpi_ds_create_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, i64, i32** }
%union.acpi_parse_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %union.acpi_parse_object* }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_OBJ_NUM_OPERANDS = common dso_local global i32 0, align 4
@ds_create_operands = common dso_local global i32 0, align 4
@AE_BAD_DATA = common dso_local global i32 0, align 4
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Arg #%d (%p) done, Arg1=%p\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"While creating Arg %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %0, %union.acpi_parse_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_walk_state*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_parse_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %4, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %5, align 8
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @ACPI_OBJ_NUM_OPERANDS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca %union.acpi_parse_object*, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %19 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @ds_create_operands, align 4
  %22 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %23 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %21, %union.acpi_parse_object* %22)
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  store %union.acpi_parse_object* %24, %union.acpi_parse_object** %7, align 8
  br label %25

25:                                               ; preds = %35, %2
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %27 = icmp ne %union.acpi_parse_object* %26, null
  br i1 %27, label %28, label %54

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @ACPI_OBJ_NUM_OPERANDS, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @AE_BAD_DATA, align 4
  %34 = call i32 @return_ACPI_STATUS(i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %union.acpi_parse_object*, %union.acpi_parse_object** %17, i64 %38
  store %union.acpi_parse_object* %36, %union.acpi_parse_object** %39, align 8
  %40 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %41 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %40, i32 0, i32 2
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* null, i32** %45, align 8
  %46 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %47 = bitcast %union.acpi_parse_object* %46 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %union.acpi_parse_object*, %union.acpi_parse_object** %48, align 8
  store %union.acpi_parse_object* %49, %union.acpi_parse_object** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %25

54:                                               ; preds = %25
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %87, %54
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %union.acpi_parse_object*, %union.acpi_parse_object** %17, i64 %63
  %65 = load %union.acpi_parse_object*, %union.acpi_parse_object** %64, align 8
  store %union.acpi_parse_object* %65, %union.acpi_parse_object** %7, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %69 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %71 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @acpi_ds_create_operand(%struct.acpi_walk_state* %70, %union.acpi_parse_object* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i64 @ACPI_FAILURE(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %61
  br label %93

78:                                               ; preds = %61
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %84 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %85 = ptrtoint %union.acpi_parse_object* %84 to i32
  %86 = call i32 @ACPI_DEBUG_PRINT(i32 %85)
  br label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %57

90:                                               ; preds = %57
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @return_ACPI_STATUS(i32 %91)
  br label %93

93:                                               ; preds = %90, %77
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %96 = call i32 @acpi_ds_obj_stack_pop_and_delete(i32 %94, %struct.acpi_walk_state* %95)
  %97 = load i32, i32* @AE_INFO, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @ACPI_EXCEPTION(i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @return_ACPI_STATUS(i32 %101)
  %103 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #2

declare dso_local i32 @return_ACPI_STATUS(i32) #2

declare dso_local i32 @acpi_ds_create_operand(%struct.acpi_walk_state*, %union.acpi_parse_object*, i32) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #2

declare dso_local i32 @acpi_ds_obj_stack_pop_and_delete(i32, %struct.acpi_walk_state*) #2

declare dso_local i32 @ACPI_EXCEPTION(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
