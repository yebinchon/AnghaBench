; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsxfeval.c_acpi_walk_namespace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsxfeval.c_acpi_walk_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_TYPE_LOCAL_MAX = common dso_local global i64 0, align 8
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@acpi_gbl_namespace_rw_lock = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@ACPI_NS_WALK_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_walk_namespace(i64 %0, i32 %1, i32 %2, i32 %3, i8* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8** %5, i8*** %13, align 8
  %15 = call i32 @ACPI_FUNCTION_TRACE(i32 (i64, i32, i32, i32, i8*, i8**)* @acpi_walk_namespace)
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @ACPI_TYPE_LOCAL_MAX, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %19, %6
  %26 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %27 = call i32 @return_ACPI_STATUS(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = call i32 @acpi_ut_acquire_read_lock(i32* @acpi_gbl_namespace_rw_lock)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i64 @ACPI_FAILURE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %7, align 4
  br label %57

35:                                               ; preds = %28
  %36 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %37 = call i32 @acpi_ut_acquire_mutex(i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i64 @ACPI_FAILURE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %53

42:                                               ; preds = %35
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @ACPI_NS_WALK_UNLOCK, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = load i8**, i8*** %13, align 8
  %50 = call i32 @acpi_ns_walk_namespace(i64 %43, i32 %44, i32 %45, i32 %46, i32 %47, i8* %48, i8** %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %52 = call i32 @acpi_ut_release_mutex(i32 %51)
  br label %53

53:                                               ; preds = %42, %41
  %54 = call i32 @acpi_ut_release_read_lock(i32* @acpi_gbl_namespace_rw_lock)
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @return_ACPI_STATUS(i32 %55)
  br label %57

57:                                               ; preds = %53, %33
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (i64, i32, i32, i32, i8*, i8**)*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_acquire_read_lock(i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i32 @acpi_ns_walk_namespace(i64, i32, i32, i32, i32, i8*, i8**) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

declare dso_local i32 @acpi_ut_release_read_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
