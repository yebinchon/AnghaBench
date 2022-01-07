; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbinstal.c_acpi_tb_delete_namespace_by_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbinstal.c_acpi_tb_delete_namespace_by_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@tb_delete_namespace_by_owner = common dso_local global i32 0, align 4
@ACPI_MTX_TABLES = common dso_local global i32 0, align 4
@acpi_gbl_root_table_list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@ACPI_MTX_INTERPRETER = common dso_local global i32 0, align 4
@acpi_gbl_namespace_rw_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_tb_delete_namespace_by_owner(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @tb_delete_namespace_by_owner, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %9 = call i32 @acpi_ut_acquire_mutex(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @ACPI_FAILURE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @return_ACPI_STATUS(i32 %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %22 = call i32 @acpi_ut_release_mutex(i32 %21)
  %23 = load i32, i32* @AE_NOT_EXIST, align 4
  %24 = call i32 @return_ACPI_STATUS(i32 %23)
  br label %25

25:                                               ; preds = %20, %16
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %32 = call i32 @acpi_ut_release_mutex(i32 %31)
  %33 = load i32, i32* @ACPI_MTX_INTERPRETER, align 4
  %34 = call i32 @acpi_ut_release_mutex(i32 %33)
  %35 = call i32 @acpi_ut_acquire_write_lock(i32* @acpi_gbl_namespace_rw_lock)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @acpi_ns_delete_namespace_by_owner(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @ACPI_FAILURE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @return_ACPI_STATUS(i32 %42)
  br label %44

44:                                               ; preds = %41, %25
  %45 = call i32 @acpi_ut_release_write_lock(i32* @acpi_gbl_namespace_rw_lock)
  %46 = load i32, i32* @ACPI_MTX_INTERPRETER, align 4
  %47 = call i32 @acpi_ut_acquire_mutex(i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @return_ACPI_STATUS(i32 %48)
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

declare dso_local i32 @acpi_ut_acquire_write_lock(i32*) #1

declare dso_local i32 @acpi_ns_delete_namespace_by_owner(i32) #1

declare dso_local i32 @acpi_ut_release_write_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
