; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_register_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_register_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@hw_register_write = common dso_local global i32 0, align 4
@ACPI_PM1_STATUS_PRESERVED_BITS = common dso_local global i32 0, align 4
@acpi_gbl_xpm1a_status = common dso_local global i32 0, align 4
@acpi_gbl_xpm1b_status = common dso_local global i32 0, align 4
@acpi_gbl_xpm1a_enable = common dso_local global i32 0, align 4
@acpi_gbl_xpm1b_enable = common dso_local global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ACPI_PM1_CONTROL_PRESERVED_BITS = common dso_local global i32 0, align 4
@ACPI_PM2_CONTROL_PRESERVED_BITS = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown Register ID: %X\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_register_write(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @hw_register_write, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %54 [
    i32 131, label %11
    i32 132, label %18
    i32 133, label %21
    i32 130, label %34
    i32 129, label %47
    i32 128, label %50
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @ACPI_PM1_STATUS_PRESERVED_BITS, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @acpi_hw_write_multiple(i32 %16, i32* @acpi_gbl_xpm1a_status, i32* @acpi_gbl_xpm1b_status)
  store i32 %17, i32* %6, align 4
  br label %59

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @acpi_hw_write_multiple(i32 %19, i32* @acpi_gbl_xpm1a_enable, i32* @acpi_gbl_xpm1b_enable)
  store i32 %20, i32* %6, align 4
  br label %59

21:                                               ; preds = %2
  %22 = call i32 @acpi_hw_read_multiple(i32* %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 4), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 3))
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %60

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ACPI_PM1_CONTROL_PRESERVED_BITS, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ACPI_INSERT_BITS(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @acpi_hw_write_multiple(i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 4), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 3))
  store i32 %33, i32* %6, align 4
  br label %59

34:                                               ; preds = %2
  %35 = call i32 @acpi_hw_read(i32* %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 2))
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ACPI_FAILURE(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %60

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @ACPI_PM2_CONTROL_PRESERVED_BITS, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ACPI_INSERT_BITS(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @acpi_hw_write(i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 2))
  store i32 %46, i32* %6, align 4
  br label %59

47:                                               ; preds = %2
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @acpi_hw_write(i32 %48, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 1))
  store i32 %49, i32* %6, align 4
  br label %59

50:                                               ; preds = %2
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @acpi_hw_write_port(i32 %51, i32 %52, i32 8)
  store i32 %53, i32* %6, align 4
  br label %59

54:                                               ; preds = %2
  %55 = load i32, i32* @AE_INFO, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @ACPI_ERROR(i32 %56)
  %58 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %54, %50, %47, %40, %27, %18, %11
  br label %60

60:                                               ; preds = %59, %39, %26
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @return_ACPI_STATUS(i32 %61)
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_hw_write_multiple(i32, i32*, i32*) #1

declare dso_local i32 @acpi_hw_read_multiple(i32*, i32*, i32*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_INSERT_BITS(i32, i32, i32) #1

declare dso_local i32 @acpi_hw_read(i32*, i32*) #1

declare dso_local i32 @acpi_hw_write(i32, i32*) #1

declare dso_local i32 @acpi_hw_write_port(i32, i32, i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
