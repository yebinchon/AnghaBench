; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_register_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_register_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@hw_register_read = common dso_local global i32 0, align 4
@acpi_gbl_xpm1a_status = common dso_local global i32 0, align 4
@acpi_gbl_xpm1b_status = common dso_local global i32 0, align 4
@acpi_gbl_xpm1a_enable = common dso_local global i32 0, align 4
@acpi_gbl_xpm1b_enable = common dso_local global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ACPI_PM1_CONTROL_WRITEONLY_BITS = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown Register ID: %X\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_register_read(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @hw_register_read, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %28 [
    i32 131, label %11
    i32 132, label %13
    i32 133, label %15
    i32 130, label %21
    i32 129, label %23
    i32 128, label %25
  ]

11:                                               ; preds = %2
  %12 = call i32 @acpi_hw_read_multiple(i32* %6, i32* @acpi_gbl_xpm1a_status, i32* @acpi_gbl_xpm1b_status)
  store i32 %12, i32* %7, align 4
  br label %33

13:                                               ; preds = %2
  %14 = call i32 @acpi_hw_read_multiple(i32* %6, i32* @acpi_gbl_xpm1a_enable, i32* @acpi_gbl_xpm1b_enable)
  store i32 %14, i32* %7, align 4
  br label %33

15:                                               ; preds = %2
  %16 = call i32 @acpi_hw_read_multiple(i32* %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 4), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 3))
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @ACPI_PM1_CONTROL_WRITEONLY_BITS, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %33

21:                                               ; preds = %2
  %22 = call i32 @acpi_hw_read(i32* %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 2))
  store i32 %22, i32* %7, align 4
  br label %33

23:                                               ; preds = %2
  %24 = call i32 @acpi_hw_read(i32* %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 1))
  store i32 %24, i32* %7, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %27 = call i32 @acpi_hw_read_port(i32 %26, i32* %6, i32 8)
  store i32 %27, i32* %7, align 4
  br label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @AE_INFO, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ACPI_ERROR(i32 %30)
  %32 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %25, %23, %21, %15, %13, %11
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @ACPI_SUCCESS(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @return_ACPI_STATUS(i32 %41)
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_hw_read_multiple(i32*, i32*, i32*) #1

declare dso_local i32 @acpi_hw_read(i32*, i32*) #1

declare dso_local i32 @acpi_hw_read_port(i32, i32*, i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
