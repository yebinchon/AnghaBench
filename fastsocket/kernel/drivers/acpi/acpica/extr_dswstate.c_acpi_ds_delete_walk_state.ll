; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_delete_walk_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_delete_walk_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i64, %union.acpi_generic_state*, %union.acpi_generic_state*, %union.acpi_generic_state*, %struct.TYPE_4__ }
%union.acpi_generic_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %union.acpi_generic_state* }
%struct.TYPE_4__ = type { i64 }

@ds_delete_walk_state = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_WALK = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%p is not a valid walk state\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%p walk still has a scope list\00", align 1
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca %struct.acpi_walk_state*, align 8
  %3 = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %2, align 8
  %4 = load i32, i32* @ds_delete_walk_state, align 4
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %6 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %4, %struct.acpi_walk_state* %5)
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %8 = icmp ne %struct.acpi_walk_state* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %93

10:                                               ; preds = %1
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %12 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ACPI_DESC_TYPE_WALK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i32, i32* @AE_INFO, align 4
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %19 = ptrtoint %struct.acpi_walk_state* %18 to i32
  %20 = call i32 @ACPI_ERROR(i32 %19)
  br label %93

21:                                               ; preds = %10
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %23 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* @AE_INFO, align 4
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %30 = ptrtoint %struct.acpi_walk_state* %29 to i32
  %31 = call i32 @ACPI_ERROR(i32 %30)
  %32 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %33 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %32, i32 0, i32 4
  %34 = call i32 @acpi_ps_cleanup_scope(%struct.TYPE_4__* %33)
  br label %35

35:                                               ; preds = %27, %21
  br label %36

36:                                               ; preds = %41, %35
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %38 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %37, i32 0, i32 3
  %39 = load %union.acpi_generic_state*, %union.acpi_generic_state** %38, align 8
  %40 = icmp ne %union.acpi_generic_state* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %43 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %42, i32 0, i32 3
  %44 = load %union.acpi_generic_state*, %union.acpi_generic_state** %43, align 8
  store %union.acpi_generic_state* %44, %union.acpi_generic_state** %3, align 8
  %45 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %46 = bitcast %union.acpi_generic_state* %45 to %struct.TYPE_3__*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %union.acpi_generic_state*, %union.acpi_generic_state** %47, align 8
  %49 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %50 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %49, i32 0, i32 3
  store %union.acpi_generic_state* %48, %union.acpi_generic_state** %50, align 8
  %51 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %52 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %51)
  br label %36

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %59, %53
  %55 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %56 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %55, i32 0, i32 2
  %57 = load %union.acpi_generic_state*, %union.acpi_generic_state** %56, align 8
  %58 = icmp ne %union.acpi_generic_state* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %61 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %60, i32 0, i32 2
  %62 = load %union.acpi_generic_state*, %union.acpi_generic_state** %61, align 8
  store %union.acpi_generic_state* %62, %union.acpi_generic_state** %3, align 8
  %63 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %64 = bitcast %union.acpi_generic_state* %63 to %struct.TYPE_3__*
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load %union.acpi_generic_state*, %union.acpi_generic_state** %65, align 8
  %67 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %68 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %67, i32 0, i32 2
  store %union.acpi_generic_state* %66, %union.acpi_generic_state** %68, align 8
  %69 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %70 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %69)
  br label %54

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %77, %71
  %73 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %74 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %73, i32 0, i32 1
  %75 = load %union.acpi_generic_state*, %union.acpi_generic_state** %74, align 8
  %76 = icmp ne %union.acpi_generic_state* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %79 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %78, i32 0, i32 1
  %80 = load %union.acpi_generic_state*, %union.acpi_generic_state** %79, align 8
  store %union.acpi_generic_state* %80, %union.acpi_generic_state** %3, align 8
  %81 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %82 = bitcast %union.acpi_generic_state* %81 to %struct.TYPE_3__*
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load %union.acpi_generic_state*, %union.acpi_generic_state** %83, align 8
  %85 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %86 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %85, i32 0, i32 1
  store %union.acpi_generic_state* %84, %union.acpi_generic_state** %86, align 8
  %87 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %88 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %87)
  br label %72

89:                                               ; preds = %72
  %90 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %91 = call i32 @ACPI_FREE(%struct.acpi_walk_state* %90)
  %92 = load i32, i32* @return_VOID, align 4
  br label %93

93:                                               ; preds = %89, %16, %9
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ps_cleanup_scope(%struct.TYPE_4__*) #1

declare dso_local i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_walk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
