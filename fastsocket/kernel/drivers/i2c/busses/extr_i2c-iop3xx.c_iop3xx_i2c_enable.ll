; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_iop3xx_data = type { i64, i32, i64 }

@IOP3XX_ICR_GCD = common dso_local global i32 0, align 4
@IOP3XX_ICR_SCLEN = common dso_local global i32 0, align 4
@IOP3XX_ICR_UE = common dso_local global i32 0, align 4
@IOP3XX_ISR_ALD = common dso_local global i32 0, align 4
@IOP3XX_ISR_BERRD = common dso_local global i32 0, align 4
@IOP3XX_ISR_RXFULL = common dso_local global i32 0, align 4
@IOP3XX_ISR_TXEMPTY = common dso_local global i32 0, align 4
@IOP3XX_ICR_ALD_IE = common dso_local global i32 0, align 4
@IOP3XX_ICR_BERR_IE = common dso_local global i32 0, align 4
@IOP3XX_ICR_RXFULL_IE = common dso_local global i32 0, align 4
@IOP3XX_ICR_TXEMPTY_IE = common dso_local global i32 0, align 4
@CR_OFFSET = common dso_local global i64 0, align 8
@GPIO_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_algo_iop3xx_data*)* @iop3xx_i2c_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iop3xx_i2c_enable(%struct.i2c_algo_iop3xx_data* %0) #0 {
  %2 = alloca %struct.i2c_algo_iop3xx_data*, align 8
  %3 = alloca i32, align 4
  store %struct.i2c_algo_iop3xx_data* %0, %struct.i2c_algo_iop3xx_data** %2, align 8
  %4 = load i32, i32* @IOP3XX_ICR_GCD, align 4
  %5 = load i32, i32* @IOP3XX_ICR_SCLEN, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @IOP3XX_ICR_UE, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @IOP3XX_ISR_ALD, align 4
  %10 = load i32, i32* @IOP3XX_ISR_BERRD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @IOP3XX_ISR_RXFULL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IOP3XX_ISR_TXEMPTY, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %2, align 8
  %17 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @IOP3XX_ICR_ALD_IE, align 4
  %19 = load i32, i32* @IOP3XX_ICR_BERR_IE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IOP3XX_ICR_RXFULL_IE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IOP3XX_ICR_TXEMPTY_IE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %2, align 8
  %29 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CR_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @__raw_writel(i32 %27, i64 %32)
  ret void
}

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
