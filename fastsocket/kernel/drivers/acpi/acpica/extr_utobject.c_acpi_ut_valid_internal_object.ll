; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utobject.c_acpi_ut_valid_internal_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utobject.c_acpi_ut_valid_internal_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ut_valid_internal_object = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"**** Null Object Ptr\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%p is not not an ACPI operand obj [%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_valid_internal_object(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i32, i32* @ut_valid_internal_object, align 4
  %5 = call i32 @ACPI_FUNCTION_NAME(i32 %4)
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ACPI_DB_EXEC, align 4
  %10 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([22 x i8]* @.str to i32))
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(i8* %13)
  switch i32 %14, label %17 [
    i32 128, label %15
  ]

15:                                               ; preds = %12
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %2, align 4
  br label %25

17:                                               ; preds = %12
  %18 = load i32, i32* @ACPI_DB_EXEC, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @acpi_ut_get_descriptor_name(i8* %20)
  %22 = call i32 @ACPI_DEBUG_PRINT(i32 %21)
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %15, %8
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_GET_DESCRIPTOR_TYPE(i8*) #1

declare dso_local i32 @acpi_ut_get_descriptor_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
