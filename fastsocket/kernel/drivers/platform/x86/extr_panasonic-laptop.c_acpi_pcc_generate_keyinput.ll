; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_generate_keyinput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_generate_keyinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcc_acpi = type { i32*, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@METHOD_HKEY_QUERY = common dso_local global i32 0, align 4
@ACPI_DB_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error getting hotkey status\0A\00", align 1
@HKEY_NOTIFY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"hotkey number out of range: %d\0A\00", align 1
@KEY_RESERVED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcc_acpi*)* @acpi_pcc_generate_keyinput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_pcc_generate_keyinput(%struct.pcc_acpi* %0) #0 {
  %2 = alloca %struct.pcc_acpi*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pcc_acpi* %0, %struct.pcc_acpi** %2, align 8
  %9 = load %struct.pcc_acpi*, %struct.pcc_acpi** %2, align 8
  %10 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %9, i32 0, i32 3
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %3, align 8
  %12 = load %struct.pcc_acpi*, %struct.pcc_acpi** %2, align 8
  %13 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @METHOD_HKEY_QUERY, align 4
  %16 = call i32 @acpi_evaluate_integer(i32 %14, i32 %15, i32* null, i64* %7)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ACPI_SUCCESS(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ACPI_DB_ERROR, align 4
  %22 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([29 x i8]* @.str to i32))
  br label %74

23:                                               ; preds = %1
  %24 = load %struct.pcc_acpi*, %struct.pcc_acpi** %2, align 8
  %25 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HKEY_NOTIFY, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @acpi_bus_generate_proc_event(i32 %26, i32 %27, i64 %28)
  %30 = load i64, i64* %7, align 8
  %31 = and i64 %30, 15
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.pcc_acpi*, %struct.pcc_acpi** %2, align 8
  %38 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @ARRAY_SIZE(i32* %39)
  %41 = icmp sge i32 %36, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35, %23
  %43 = load i32, i32* @ACPI_DB_ERROR, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ACPI_DEBUG_PRINT(i32 %44)
  br label %74

46:                                               ; preds = %35
  %47 = load %struct.pcc_acpi*, %struct.pcc_acpi** %2, align 8
  %48 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @KEY_RESERVED, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %46
  %58 = load i64, i64* %7, align 8
  %59 = and i64 %58, 128
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @TRUE, align 4
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @FALSE, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %8, align 4
  %67 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @input_report_key(%struct.input_dev* %67, i32 %68, i32 %69)
  %71 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %72 = call i32 @input_sync(%struct.input_dev* %71)
  br label %73

73:                                               ; preds = %65, %46
  br label %74

74:                                               ; preds = %73, %42, %20
  ret void
}

declare dso_local i32 @acpi_evaluate_integer(i32, i32, i32*, i64*) #1

declare dso_local i32 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_bus_generate_proc_event(i32, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
