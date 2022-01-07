; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_erst.c___erst_read_from_storage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_erst.c___erst_read_from_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apei_exec_context = type { i32 }

@FIRMWARE_TIMEOUT = common dso_local global i64 0, align 8
@ACPI_ERST_BEGIN_READ = common dso_local global i32 0, align 4
@ACPI_ERST_SET_RECORD_OFFSET = common dso_local global i32 0, align 4
@ACPI_ERST_SET_RECORD_ID = common dso_local global i32 0, align 4
@ACPI_ERST_EXECUTE_OPERATION = common dso_local global i32 0, align 4
@ACPI_ERST_CHECK_BUSY_STATUS = common dso_local global i32 0, align 4
@SPIN_UNIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ACPI_ERST_GET_COMMAND_STATUS = common dso_local global i32 0, align 4
@ACPI_ERST_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @__erst_read_from_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__erst_read_from_storage(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.apei_exec_context, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* @FIRMWARE_TIMEOUT, align 8
  store i64 %10, i64* %7, align 8
  %11 = call i32 @erst_exec_ctx_init(%struct.apei_exec_context* %6)
  %12 = load i32, i32* @ACPI_ERST_BEGIN_READ, align 4
  %13 = call i32 @apei_exec_run_optional(%struct.apei_exec_context* %6, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %82

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @apei_exec_ctx_set_input(%struct.apei_exec_context* %6, i64 %19)
  %21 = load i32, i32* @ACPI_ERST_SET_RECORD_OFFSET, align 4
  %22 = call i32 @apei_exec_run(%struct.apei_exec_context* %6, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %82

27:                                               ; preds = %18
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @apei_exec_ctx_set_input(%struct.apei_exec_context* %6, i64 %28)
  %30 = load i32, i32* @ACPI_ERST_SET_RECORD_ID, align 4
  %31 = call i32 @apei_exec_run(%struct.apei_exec_context* %6, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %82

36:                                               ; preds = %27
  %37 = load i32, i32* @ACPI_ERST_EXECUTE_OPERATION, align 4
  %38 = call i32 @apei_exec_run(%struct.apei_exec_context* %6, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %82

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %63, %43
  %45 = load i32, i32* @ACPI_ERST_CHECK_BUSY_STATUS, align 4
  %46 = call i32 @apei_exec_run(%struct.apei_exec_context* %6, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %82

51:                                               ; preds = %44
  %52 = call i64 @apei_exec_ctx_get_output(%struct.apei_exec_context* %6)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %64

56:                                               ; preds = %51
  %57 = load i32, i32* @SPIN_UNIT, align 4
  %58 = call i64 @erst_timedout(i64* %7, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %82

63:                                               ; preds = %56
  br label %44

64:                                               ; preds = %55
  %65 = load i32, i32* @ACPI_ERST_GET_COMMAND_STATUS, align 4
  %66 = call i32 @apei_exec_run(%struct.apei_exec_context* %6, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %82

71:                                               ; preds = %64
  %72 = call i64 @apei_exec_ctx_get_output(%struct.apei_exec_context* %6)
  store i64 %72, i64* %8, align 8
  %73 = load i32, i32* @ACPI_ERST_END, align 4
  %74 = call i32 @apei_exec_run_optional(%struct.apei_exec_context* %6, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %82

79:                                               ; preds = %71
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @erst_errno(i64 %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %77, %69, %60, %49, %41, %34, %25, %16
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @erst_exec_ctx_init(%struct.apei_exec_context*) #1

declare dso_local i32 @apei_exec_run_optional(%struct.apei_exec_context*, i32) #1

declare dso_local i32 @apei_exec_ctx_set_input(%struct.apei_exec_context*, i64) #1

declare dso_local i32 @apei_exec_run(%struct.apei_exec_context*, i32) #1

declare dso_local i64 @apei_exec_ctx_get_output(%struct.apei_exec_context*) #1

declare dso_local i64 @erst_timedout(i64*, i32) #1

declare dso_local i32 @erst_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
