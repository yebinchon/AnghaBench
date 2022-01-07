; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_osl.c_acpi_os_signal_semaphore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_osl.c_acpi_os_signal_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.semaphore = type { i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_SUPPORT = common dso_local global i32 0, align 4
@ACPI_DB_MUTEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Signaling semaphore[%p|%d]\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_os_signal_semaphore(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.semaphore*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.semaphore*
  store %struct.semaphore* %8, %struct.semaphore** %6, align 8
  %9 = load %struct.semaphore*, %struct.semaphore** %6, align 8
  %10 = icmp ne %struct.semaphore* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %15, i32* %3, align 4
  br label %29

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @AE_SUPPORT, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %16
  %22 = load i32, i32* @ACPI_DB_MUTEX, align 4
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ACPI_DEBUG_PRINT(i32 %24)
  %26 = load %struct.semaphore*, %struct.semaphore** %6, align 8
  %27 = call i32 @up(%struct.semaphore* %26)
  %28 = load i32, i32* @AE_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %19, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @up(%struct.semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
