; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_enable_wake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_enable_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvt_dev = type { i32 }

@LOGICAL_DEV_ACPI = common dso_local global i32 0, align 4
@CIR_WAKE_ENABLE_BIT = common dso_local global i32 0, align 4
@CR_ACPI_CIR_WAKE = common dso_local global i32 0, align 4
@CIR_INTR_MOUSE_IRQ_BIT = common dso_local global i32 0, align 4
@CR_ACPI_IRQ_EVENTS = common dso_local global i32 0, align 4
@PME_INTR_CIR_PASS_BIT = common dso_local global i32 0, align 4
@CR_ACPI_IRQ_EVENTS2 = common dso_local global i32 0, align 4
@LOGICAL_DEV_CIR_WAKE = common dso_local global i32 0, align 4
@LOGICAL_DEV_ENABLE = common dso_local global i32 0, align 4
@CR_LOGICAL_DEV_EN = common dso_local global i32 0, align 4
@CIR_WAKE_IRCON_MODE0 = common dso_local global i32 0, align 4
@CIR_WAKE_IRCON_RXEN = common dso_local global i32 0, align 4
@CIR_WAKE_IRCON_R = common dso_local global i32 0, align 4
@CIR_WAKE_IRCON_RXINV = common dso_local global i32 0, align 4
@CIR_WAKE_IRCON_SAMPLE_PERIOD_SEL = common dso_local global i32 0, align 4
@CIR_WAKE_IRCON = common dso_local global i32 0, align 4
@CIR_WAKE_IRSTS = common dso_local global i32 0, align 4
@CIR_WAKE_IREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvt_dev*)* @nvt_enable_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvt_enable_wake(%struct.nvt_dev* %0) #0 {
  %2 = alloca %struct.nvt_dev*, align 8
  store %struct.nvt_dev* %0, %struct.nvt_dev** %2, align 8
  %3 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %4 = call i32 @nvt_efm_enable(%struct.nvt_dev* %3)
  %5 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %6 = load i32, i32* @LOGICAL_DEV_ACPI, align 4
  %7 = call i32 @nvt_select_logical_dev(%struct.nvt_dev* %5, i32 %6)
  %8 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %9 = load i32, i32* @CIR_WAKE_ENABLE_BIT, align 4
  %10 = load i32, i32* @CR_ACPI_CIR_WAKE, align 4
  %11 = call i32 @nvt_set_reg_bit(%struct.nvt_dev* %8, i32 %9, i32 %10)
  %12 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %13 = load i32, i32* @CIR_INTR_MOUSE_IRQ_BIT, align 4
  %14 = load i32, i32* @CR_ACPI_IRQ_EVENTS, align 4
  %15 = call i32 @nvt_set_reg_bit(%struct.nvt_dev* %12, i32 %13, i32 %14)
  %16 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %17 = load i32, i32* @PME_INTR_CIR_PASS_BIT, align 4
  %18 = load i32, i32* @CR_ACPI_IRQ_EVENTS2, align 4
  %19 = call i32 @nvt_set_reg_bit(%struct.nvt_dev* %16, i32 %17, i32 %18)
  %20 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %21 = load i32, i32* @LOGICAL_DEV_CIR_WAKE, align 4
  %22 = call i32 @nvt_select_logical_dev(%struct.nvt_dev* %20, i32 %21)
  %23 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %24 = load i32, i32* @LOGICAL_DEV_ENABLE, align 4
  %25 = load i32, i32* @CR_LOGICAL_DEV_EN, align 4
  %26 = call i32 @nvt_cr_write(%struct.nvt_dev* %23, i32 %24, i32 %25)
  %27 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %28 = call i32 @nvt_efm_disable(%struct.nvt_dev* %27)
  %29 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %30 = load i32, i32* @CIR_WAKE_IRCON_MODE0, align 4
  %31 = load i32, i32* @CIR_WAKE_IRCON_RXEN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CIR_WAKE_IRCON_R, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CIR_WAKE_IRCON_RXINV, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CIR_WAKE_IRCON_SAMPLE_PERIOD_SEL, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CIR_WAKE_IRCON, align 4
  %40 = call i32 @nvt_cir_wake_reg_write(%struct.nvt_dev* %29, i32 %38, i32 %39)
  %41 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %42 = load i32, i32* @CIR_WAKE_IRSTS, align 4
  %43 = call i32 @nvt_cir_wake_reg_write(%struct.nvt_dev* %41, i32 255, i32 %42)
  %44 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %45 = load i32, i32* @CIR_WAKE_IREN, align 4
  %46 = call i32 @nvt_cir_wake_reg_write(%struct.nvt_dev* %44, i32 0, i32 %45)
  ret void
}

declare dso_local i32 @nvt_efm_enable(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_select_logical_dev(%struct.nvt_dev*, i32) #1

declare dso_local i32 @nvt_set_reg_bit(%struct.nvt_dev*, i32, i32) #1

declare dso_local i32 @nvt_cr_write(%struct.nvt_dev*, i32, i32) #1

declare dso_local i32 @nvt_efm_disable(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_cir_wake_reg_write(%struct.nvt_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
