; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_cir_wake_regs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_cir_wake_regs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvt_dev = type { i32 }

@CIR_WAKE_FIFO_CMP_BYTES = common dso_local global i32 0, align 4
@CIR_WAKE_FIFO_CMP_DEEP = common dso_local global i32 0, align 4
@CIR_WAKE_CMP_TOLERANCE = common dso_local global i32 0, align 4
@CIR_WAKE_FIFO_CMP_TOL = common dso_local global i32 0, align 4
@CIR_RX_LIMIT_COUNT = common dso_local global i32 0, align 4
@CIR_WAKE_SLCH = common dso_local global i32 0, align 4
@CIR_WAKE_SLCL = common dso_local global i32 0, align 4
@CIR_WAKE_FIFOCON_RX_TRIGGER_LEV = common dso_local global i32 0, align 4
@CIR_WAKE_FIFOCON = common dso_local global i32 0, align 4
@CIR_WAKE_IRCON_MODE0 = common dso_local global i32 0, align 4
@CIR_WAKE_IRCON_RXEN = common dso_local global i32 0, align 4
@CIR_WAKE_IRCON_R = common dso_local global i32 0, align 4
@CIR_WAKE_IRCON_RXINV = common dso_local global i32 0, align 4
@CIR_WAKE_IRCON_SAMPLE_PERIOD_SEL = common dso_local global i32 0, align 4
@CIR_WAKE_IRCON = common dso_local global i32 0, align 4
@CIR_WAKE_IRSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvt_dev*)* @nvt_cir_wake_regs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvt_cir_wake_regs_init(%struct.nvt_dev* %0) #0 {
  %2 = alloca %struct.nvt_dev*, align 8
  store %struct.nvt_dev* %0, %struct.nvt_dev** %2, align 8
  %3 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %4 = load i32, i32* @CIR_WAKE_FIFO_CMP_BYTES, align 4
  %5 = load i32, i32* @CIR_WAKE_FIFO_CMP_DEEP, align 4
  %6 = call i32 @nvt_cir_wake_reg_write(%struct.nvt_dev* %3, i32 %4, i32 %5)
  %7 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %8 = load i32, i32* @CIR_WAKE_CMP_TOLERANCE, align 4
  %9 = load i32, i32* @CIR_WAKE_FIFO_CMP_TOL, align 4
  %10 = call i32 @nvt_cir_wake_reg_write(%struct.nvt_dev* %7, i32 %8, i32 %9)
  %11 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %12 = load i32, i32* @CIR_RX_LIMIT_COUNT, align 4
  %13 = ashr i32 %12, 8
  %14 = load i32, i32* @CIR_WAKE_SLCH, align 4
  %15 = call i32 @nvt_cir_wake_reg_write(%struct.nvt_dev* %11, i32 %13, i32 %14)
  %16 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %17 = load i32, i32* @CIR_RX_LIMIT_COUNT, align 4
  %18 = and i32 %17, 255
  %19 = load i32, i32* @CIR_WAKE_SLCL, align 4
  %20 = call i32 @nvt_cir_wake_reg_write(%struct.nvt_dev* %16, i32 %18, i32 %19)
  %21 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %22 = load i32, i32* @CIR_WAKE_FIFOCON_RX_TRIGGER_LEV, align 4
  %23 = load i32, i32* @CIR_WAKE_FIFOCON, align 4
  %24 = call i32 @nvt_cir_wake_reg_write(%struct.nvt_dev* %21, i32 %22, i32 %23)
  %25 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %26 = load i32, i32* @CIR_WAKE_IRCON_MODE0, align 4
  %27 = load i32, i32* @CIR_WAKE_IRCON_RXEN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CIR_WAKE_IRCON_R, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CIR_WAKE_IRCON_RXINV, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CIR_WAKE_IRCON_SAMPLE_PERIOD_SEL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CIR_WAKE_IRCON, align 4
  %36 = call i32 @nvt_cir_wake_reg_write(%struct.nvt_dev* %25, i32 %34, i32 %35)
  %37 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %38 = call i32 @nvt_clear_cir_wake_fifo(%struct.nvt_dev* %37)
  %39 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %40 = load i32, i32* @CIR_WAKE_IRSTS, align 4
  %41 = call i32 @nvt_cir_wake_reg_write(%struct.nvt_dev* %39, i32 255, i32 %40)
  ret void
}

declare dso_local i32 @nvt_cir_wake_reg_write(%struct.nvt_dev*, i32, i32) #1

declare dso_local i32 @nvt_clear_cir_wake_fifo(%struct.nvt_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
