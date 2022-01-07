; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_disable_cir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_disable_cir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvt_dev = type { i32 }

@CIR_IREN = common dso_local global i32 0, align 4
@CIR_IRSTS = common dso_local global i32 0, align 4
@CIR_IRCON = common dso_local global i32 0, align 4
@LOGICAL_DEV_CIR = common dso_local global i32 0, align 4
@LOGICAL_DEV_DISABLE = common dso_local global i32 0, align 4
@CR_LOGICAL_DEV_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvt_dev*)* @nvt_disable_cir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvt_disable_cir(%struct.nvt_dev* %0) #0 {
  %2 = alloca %struct.nvt_dev*, align 8
  store %struct.nvt_dev* %0, %struct.nvt_dev** %2, align 8
  %3 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %4 = load i32, i32* @CIR_IREN, align 4
  %5 = call i32 @nvt_cir_reg_write(%struct.nvt_dev* %3, i32 0, i32 %4)
  %6 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %7 = load i32, i32* @CIR_IRSTS, align 4
  %8 = call i32 @nvt_cir_reg_write(%struct.nvt_dev* %6, i32 255, i32 %7)
  %9 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %10 = load i32, i32* @CIR_IRCON, align 4
  %11 = call i32 @nvt_cir_reg_write(%struct.nvt_dev* %9, i32 0, i32 %10)
  %12 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %13 = call i32 @nvt_clear_cir_fifo(%struct.nvt_dev* %12)
  %14 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %15 = call i32 @nvt_clear_tx_fifo(%struct.nvt_dev* %14)
  %16 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %17 = call i32 @nvt_efm_enable(%struct.nvt_dev* %16)
  %18 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %19 = load i32, i32* @LOGICAL_DEV_CIR, align 4
  %20 = call i32 @nvt_select_logical_dev(%struct.nvt_dev* %18, i32 %19)
  %21 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %22 = load i32, i32* @LOGICAL_DEV_DISABLE, align 4
  %23 = load i32, i32* @CR_LOGICAL_DEV_EN, align 4
  %24 = call i32 @nvt_cr_write(%struct.nvt_dev* %21, i32 %22, i32 %23)
  %25 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %26 = call i32 @nvt_efm_disable(%struct.nvt_dev* %25)
  ret void
}

declare dso_local i32 @nvt_cir_reg_write(%struct.nvt_dev*, i32, i32) #1

declare dso_local i32 @nvt_clear_cir_fifo(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_clear_tx_fifo(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_efm_enable(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_select_logical_dev(%struct.nvt_dev*, i32) #1

declare dso_local i32 @nvt_cr_write(%struct.nvt_dev*, i32, i32) #1

declare dso_local i32 @nvt_efm_disable(%struct.nvt_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
