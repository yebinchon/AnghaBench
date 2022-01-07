; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evmisc.c_acpi_ev_acquire_global_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evmisc.c_acpi_ev_acquire_global_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@ev_acquire_global_lock = common dso_local global i32 0, align 4
@acpi_gbl_global_lock_mutex = common dso_local global %struct.TYPE_4__* null, align 8
@AE_TIME = common dso_local global i64 0, align 8
@acpi_ev_global_lock_thread_id = common dso_local global i64 0, align 8
@acpi_ev_global_lock_acquired = common dso_local global i32 0, align 4
@acpi_gbl_global_lock_handle = common dso_local global i32 0, align 4
@acpi_gbl_global_lock_present = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@acpi_gbl_global_lock_acquired = common dso_local global i8* null, align 8
@acpi_ev_global_lock_pending_lock = common dso_local global i32 0, align 4
@acpi_gbl_FACS = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Acquired hardware Global Lock\0A\00", align 1
@acpi_ev_global_lock_pending = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Waiting for hardware Global Lock\0A\00", align 1
@acpi_gbl_global_lock_semaphore = common dso_local global i32 0, align 4
@ACPI_WAIT_FOREVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ev_acquire_global_lock(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i64, i64* @AE_OK, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i8*, i8** @FALSE, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i32, i32* @ev_acquire_global_lock, align 4
  %10 = call i32 @ACPI_FUNCTION_TRACE(i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acpi_gbl_global_lock_mutex, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @acpi_ex_system_wait_mutex(i32 %14, i32 0)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @AE_TIME, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load i64, i64* @acpi_ev_global_lock_thread_id, align 8
  %21 = call i64 (...) @acpi_os_get_thread_id()
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @acpi_ev_global_lock_acquired, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @acpi_ev_global_lock_acquired, align 4
  %26 = load i64, i64* @AE_OK, align 8
  store i64 %26, i64* %2, align 8
  br label %98

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @ACPI_FAILURE(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acpi_gbl_global_lock_mutex, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @acpi_ex_system_wait_mutex(i32 %36, i32 %37)
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %32, %28
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @ACPI_FAILURE(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @return_ACPI_STATUS(i64 %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = call i64 (...) @acpi_os_get_thread_id()
  store i64 %47, i64* @acpi_ev_global_lock_thread_id, align 8
  %48 = load i32, i32* @acpi_ev_global_lock_acquired, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @acpi_ev_global_lock_acquired, align 4
  %50 = load i32, i32* @acpi_gbl_global_lock_handle, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @acpi_gbl_global_lock_handle, align 4
  %52 = load i32, i32* @acpi_gbl_global_lock_handle, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 1, i32* @acpi_gbl_global_lock_handle, align 4
  br label %55

55:                                               ; preds = %54, %46
  %56 = load i32, i32* @acpi_gbl_global_lock_present, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** @TRUE, align 8
  store i8* %59, i8** @acpi_gbl_global_lock_acquired, align 8
  %60 = load i64, i64* @AE_OK, align 8
  %61 = call i32 @return_ACPI_STATUS(i64 %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* @acpi_ev_global_lock_pending_lock, align 4
  %64 = call i32 @acpi_os_acquire_lock(i32 %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %87, %62
  %66 = load i32, i32* @acpi_gbl_FACS, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @ACPI_ACQUIRE_GLOBAL_LOCK(i32 %66, i8* %67)
  %69 = load i8*, i8** %6, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i8*, i8** @TRUE, align 8
  store i8* %72, i8** @acpi_gbl_global_lock_acquired, align 8
  %73 = load i32, i32* @ACPI_DB_EXEC, align 4
  %74 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([31 x i8]* @.str to i32))
  br label %91

75:                                               ; preds = %65
  %76 = load i8*, i8** @TRUE, align 8
  store i8* %76, i8** @acpi_ev_global_lock_pending, align 8
  %77 = load i32, i32* @acpi_ev_global_lock_pending_lock, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @acpi_os_release_lock(i32 %77, i32 %78)
  %80 = load i32, i32* @ACPI_DB_EXEC, align 4
  %81 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([34 x i8]* @.str.1 to i32))
  %82 = load i32, i32* @acpi_gbl_global_lock_semaphore, align 4
  %83 = load i32, i32* @ACPI_WAIT_FOREVER, align 4
  %84 = call i64 @acpi_ex_system_wait_semaphore(i32 %82, i32 %83)
  store i64 %84, i64* %5, align 8
  %85 = load i32, i32* @acpi_ev_global_lock_pending_lock, align 4
  %86 = call i32 @acpi_os_acquire_lock(i32 %85)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %75
  %88 = load i64, i64* %5, align 8
  %89 = call i64 @ACPI_SUCCESS(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %65, label %91

91:                                               ; preds = %87, %71
  %92 = load i8*, i8** @FALSE, align 8
  store i8* %92, i8** @acpi_ev_global_lock_pending, align 8
  %93 = load i32, i32* @acpi_ev_global_lock_pending_lock, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @acpi_os_release_lock(i32 %93, i32 %94)
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @return_ACPI_STATUS(i64 %96)
  br label %98

98:                                               ; preds = %91, %23
  %99 = load i64, i64* %2, align 8
  ret i64 %99
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @acpi_ex_system_wait_mutex(i32, i32) #1

declare dso_local i64 @acpi_os_get_thread_id(...) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i32 @acpi_os_acquire_lock(i32) #1

declare dso_local i32 @ACPI_ACQUIRE_GLOBAL_LOCK(i32, i8*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_os_release_lock(i32, i32) #1

declare dso_local i64 @acpi_ex_system_wait_semaphore(i32, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
