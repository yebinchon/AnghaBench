; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_osl.c_acpi_os_wait_semaphore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_osl.c_acpi_os_wait_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.semaphore = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_SUPPORT = common dso_local global i32 0, align 4
@ACPI_DB_MUTEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Waiting for semaphore[%p|%d|%d]\0A\00", align 1
@ACPI_WAIT_FOREVER = common dso_local global i64 0, align 8
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@AE_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to acquire semaphore[%p|%d|%d], %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Acquired semaphore[%p|%d|%d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_os_wait_semaphore(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.semaphore*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @AE_OK, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to %struct.semaphore*
  store %struct.semaphore* %14, %struct.semaphore** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.semaphore*, %struct.semaphore** %9, align 8
  %16 = icmp ne %struct.semaphore* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %21, i32* %4, align 4
  br label %71

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @AE_SUPPORT, align 4
  store i32 %26, i32* %4, align 4
  br label %71

27:                                               ; preds = %22
  %28 = load i32, i32* @ACPI_DB_MUTEX, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i64, i64* %7, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @ACPI_DEBUG_PRINT(i32 %32)
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @ACPI_WAIT_FOREVER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  store i64 %38, i64* %10, align 8
  br label %42

39:                                               ; preds = %27
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @msecs_to_jiffies(i64 %40)
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %39, %37
  %43 = load %struct.semaphore*, %struct.semaphore** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @down_timeout(%struct.semaphore* %43, i64 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @AE_TIME, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @ACPI_FAILURE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, i32* @ACPI_DB_MUTEX, align 4
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @acpi_format_exception(i32 %59)
  %61 = call i32 @ACPI_DEBUG_PRINT(i32 %60)
  br label %69

62:                                               ; preds = %50
  %63 = load i32, i32* @ACPI_DB_MUTEX, align 4
  %64 = load i64, i64* %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i64, i64* %7, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @ACPI_DEBUG_PRINT(i32 %67)
  br label %69

69:                                               ; preds = %62, %54
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %25, %20
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @down_timeout(%struct.semaphore*, i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_format_exception(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
