; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmutex.c_acpi_ut_delete_mutex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmutex.c_acpi_ut_delete_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@ut_delete_mutex = common dso_local global i32 0, align 4
@ACPI_MAX_MUTEX = common dso_local global i64 0, align 8
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@acpi_gbl_mutex_info = common dso_local global %struct.TYPE_2__* null, align 8
@ACPI_MUTEX_NOT_ACQUIRED = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @acpi_ut_delete_mutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ut_delete_mutex(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i32, i32* @ut_delete_mutex, align 4
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @ACPI_FUNCTION_TRACE_U32(i32 %4, i64 %5)
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @ACPI_MAX_MUTEX, align 8
  %9 = icmp ugt i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %12 = call i32 @return_ACPI_STATUS(i32 %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_mutex_info, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @acpi_os_delete_mutex(i32* %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_mutex_info, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* @ACPI_MUTEX_NOT_ACQUIRED, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_mutex_info, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 8
  %29 = load i32, i32* @AE_OK, align 4
  %30 = call i32 @return_ACPI_STATUS(i32 %29)
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_U32(i32, i64) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_os_delete_mutex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
