; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evrgnini.c_acpi_ev_io_space_region_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evrgnini.c_acpi_ev_io_space_region_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ev_io_space_region_setup = common dso_local global i32 0, align 4
@ACPI_REGION_DEACTIVATE = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_io_space_region_setup(i32 %0, i64 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %10 = load i32, i32* @ev_io_space_region_setup, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @ACPI_REGION_DEACTIVATE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i8**, i8*** %9, align 8
  store i8* null, i8** %16, align 8
  br label %20

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = load i8**, i8*** %9, align 8
  store i8* %18, i8** %19, align 8
  br label %20

20:                                               ; preds = %17, %15
  %21 = load i32, i32* @AE_OK, align 4
  %22 = call i32 @return_ACPI_STATUS(i32 %21)
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
