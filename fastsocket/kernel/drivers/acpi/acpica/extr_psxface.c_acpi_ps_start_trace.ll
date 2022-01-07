; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psxface.c_acpi_ps_start_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psxface.c_acpi_ps_start_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@acpi_gbl_trace_method_name = common dso_local global i64 0, align 8
@acpi_dbg_level = common dso_local global i32 0, align 4
@acpi_gbl_original_dbg_level = common dso_local global i32 0, align 4
@acpi_dbg_layer = common dso_local global i64 0, align 8
@acpi_gbl_original_dbg_layer = common dso_local global i64 0, align 8
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@acpi_gbl_trace_dbg_level = common dso_local global i32 0, align 4
@acpi_gbl_trace_dbg_layer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_evaluate_info*)* @acpi_ps_start_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ps_start_trace(%struct.acpi_evaluate_info* %0) #0 {
  %2 = alloca %struct.acpi_evaluate_info*, align 8
  %3 = alloca i32, align 4
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %2, align 8
  %4 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %5 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %6 = call i32 @acpi_ut_acquire_mutex(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @ACPI_FAILURE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %41

11:                                               ; preds = %1
  %12 = load i64, i64* @acpi_gbl_trace_method_name, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i64, i64* @acpi_gbl_trace_method_name, align 8
  %16 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %2, align 8
  %17 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14, %11
  br label %38

24:                                               ; preds = %14
  %25 = load i32, i32* @acpi_dbg_level, align 4
  store i32 %25, i32* @acpi_gbl_original_dbg_level, align 4
  %26 = load i64, i64* @acpi_dbg_layer, align 8
  store i64 %26, i64* @acpi_gbl_original_dbg_layer, align 8
  store i32 16777215, i32* @acpi_dbg_level, align 4
  %27 = load i64, i64* @ACPI_UINT32_MAX, align 8
  store i64 %27, i64* @acpi_dbg_layer, align 8
  %28 = load i32, i32* @acpi_gbl_trace_dbg_level, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @acpi_gbl_trace_dbg_level, align 4
  store i32 %31, i32* @acpi_dbg_level, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i64, i64* @acpi_gbl_trace_dbg_layer, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i64, i64* @acpi_gbl_trace_dbg_layer, align 8
  store i64 %36, i64* @acpi_dbg_layer, align 8
  br label %37

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %40 = call i32 @acpi_ut_release_mutex(i32 %39)
  br label %41

41:                                               ; preds = %38, %10
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
