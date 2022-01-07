; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evmisc.c_acpi_ev_release_global_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evmisc.c_acpi_ev_release_global_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@AE_OK = common dso_local global i32 0, align 4
@ev_release_global_lock = common dso_local global i32 0, align 4
@acpi_gbl_global_lock_acquired = common dso_local global i8* null, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Cannot release the ACPI Global Lock, it has not been acquired\00", align 1
@AE_NOT_ACQUIRED = common dso_local global i32 0, align 4
@acpi_ev_global_lock_acquired = common dso_local global i64 0, align 8
@acpi_gbl_global_lock_present = common dso_local global i64 0, align 8
@acpi_gbl_FACS = common dso_local global i32 0, align 4
@ACPI_BITREG_GLOBAL_LOCK_RELEASE = common dso_local global i32 0, align 4
@ACPI_ENABLE_EVENT = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Released hardware Global Lock\0A\00", align 1
@acpi_ev_global_lock_thread_id = common dso_local global i32* null, align 8
@acpi_gbl_global_lock_mutex = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_release_global_lock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i8*, i8** @FALSE, align 8
  store i8* %4, i8** %2, align 8
  %5 = load i32, i32* @AE_OK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @ev_release_global_lock, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load i8*, i8** @acpi_gbl_global_lock_acquired, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @AE_INFO, align 4
  %12 = call i32 @ACPI_WARNING(i32 ptrtoint ([62 x i8]* @.str to i32))
  %13 = load i32, i32* @AE_NOT_ACQUIRED, align 4
  %14 = call i32 @return_ACPI_STATUS(i32 %13)
  br label %15

15:                                               ; preds = %10, %0
  %16 = load i64, i64* @acpi_ev_global_lock_acquired, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* @acpi_ev_global_lock_acquired, align 8
  %18 = load i64, i64* @acpi_ev_global_lock_acquired, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @AE_OK, align 4
  store i32 %21, i32* %1, align 4
  br label %47

22:                                               ; preds = %15
  %23 = load i64, i64* @acpi_gbl_global_lock_present, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i32, i32* @acpi_gbl_FACS, align 4
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @ACPI_RELEASE_GLOBAL_LOCK(i32 %26, i8* %27)
  %29 = load i8*, i8** %2, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @ACPI_BITREG_GLOBAL_LOCK_RELEASE, align 4
  %33 = load i32, i32* @ACPI_ENABLE_EVENT, align 4
  %34 = call i32 @acpi_write_bit_register(i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* @ACPI_DB_EXEC, align 4
  %37 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([31 x i8]* @.str.1 to i32))
  br label %38

38:                                               ; preds = %35, %22
  %39 = load i8*, i8** @FALSE, align 8
  store i8* %39, i8** @acpi_gbl_global_lock_acquired, align 8
  store i32* null, i32** @acpi_ev_global_lock_thread_id, align 8
  store i64 0, i64* @acpi_ev_global_lock_acquired, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acpi_gbl_global_lock_mutex, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @acpi_os_release_mutex(i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @return_ACPI_STATUS(i32 %45)
  br label %47

47:                                               ; preds = %38, %20
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_RELEASE_GLOBAL_LOCK(i32, i8*) #1

declare dso_local i32 @acpi_write_bit_register(i32, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_os_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
