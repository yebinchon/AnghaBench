; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_exec_begin_control_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_exec_begin_control_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%union.acpi_parse_object = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%union.acpi_generic_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ds_exec_begin_control_op = common dso_local global i32 0, align 4
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Op=%p Opcode=%2.2X State=%p\0A\00", align 1
@ACPI_CONTROL_CONDITIONAL_EXECUTING = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_CTRL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_exec_begin_control_op(%struct.acpi_walk_state* %0, %union.acpi_parse_object* %1) #0 {
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca %union.acpi_parse_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %4, align 8
  %7 = load i32, i32* @AE_OK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @ds_exec_begin_control_op, align 4
  %9 = call i32 @ACPI_FUNCTION_NAME(i32 %8)
  %10 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %13 = bitcast %union.acpi_parse_object* %12 to %struct.TYPE_11__*
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %17 = ptrtoint %struct.acpi_walk_state* %16 to i32
  %18 = call i32 @ACPI_DEBUG_PRINT(i32 %17)
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %20 = bitcast %union.acpi_parse_object* %19 to %struct.TYPE_11__*
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %92 [
    i32 128, label %23
    i32 130, label %50
    i32 131, label %83
    i32 129, label %91
  ]

23:                                               ; preds = %2
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %30 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %36 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp eq i32 %34, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %28
  %42 = load i32, i32* @ACPI_CONTROL_CONDITIONAL_EXECUTING, align 4
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  br label %93

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48, %23
  br label %50

50:                                               ; preds = %2, %49
  %51 = call %union.acpi_generic_state* (...) @acpi_ut_create_control_state()
  store %union.acpi_generic_state* %51, %union.acpi_generic_state** %6, align 8
  %52 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %53 = icmp ne %union.acpi_generic_state* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %55, i32* %5, align 4
  br label %93

56:                                               ; preds = %50
  %57 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %58 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %63 = bitcast %union.acpi_generic_state* %62 to %struct.TYPE_10__*
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 4
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %66 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %70 = bitcast %union.acpi_generic_state* %69 to %struct.TYPE_10__*
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %73 = bitcast %union.acpi_parse_object* %72 to %struct.TYPE_11__*
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %77 = bitcast %union.acpi_generic_state* %76 to %struct.TYPE_10__*
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  %79 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %80 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %79, i32 0, i32 1
  %81 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %82 = call i32 @acpi_ut_push_generic_state(%struct.TYPE_12__** %80, %union.acpi_generic_state* %81)
  br label %93

83:                                               ; preds = %2
  %84 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %85 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @AE_CTRL_TRUE, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %83
  br label %93

91:                                               ; preds = %2
  br label %93

92:                                               ; preds = %2
  br label %93

93:                                               ; preds = %92, %91, %90, %56, %54, %41
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_create_control_state(...) #1

declare dso_local i32 @acpi_ut_push_generic_state(%struct.TYPE_12__**, %union.acpi_generic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
