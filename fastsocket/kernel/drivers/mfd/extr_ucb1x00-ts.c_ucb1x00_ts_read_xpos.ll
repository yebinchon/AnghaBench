; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_ts_read_xpos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_ts_read_xpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00_ts = type { i32, i32 }

@COLLIE_TC35143_GPIO_TBL_CHK = common dso_local global i32 0, align 4
@UCB_TS_CR = common dso_local global i32 0, align 4
@UCB_TS_CR_TSMX_GND = common dso_local global i32 0, align 4
@UCB_TS_CR_TSPX_POW = common dso_local global i32 0, align 4
@UCB_TS_CR_MODE_PRES = common dso_local global i32 0, align 4
@UCB_TS_CR_BIAS_ENA = common dso_local global i32 0, align 4
@UCB_TS_CR_MODE_POS = common dso_local global i32 0, align 4
@UCB_ADC_INP_TSPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucb1x00_ts*)* @ucb1x00_ts_read_xpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_ts_read_xpos(%struct.ucb1x00_ts* %0) #0 {
  %2 = alloca %struct.ucb1x00_ts*, align 8
  store %struct.ucb1x00_ts* %0, %struct.ucb1x00_ts** %2, align 8
  %3 = call i64 (...) @machine_is_collie()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %2, align 8
  %7 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @COLLIE_TC35143_GPIO_TBL_CHK, align 4
  %10 = call i32 @ucb1x00_io_write(i32 %8, i32 0, i32 %9)
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %2, align 8
  %13 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UCB_TS_CR, align 4
  %16 = load i32, i32* @UCB_TS_CR_TSMX_GND, align 4
  %17 = load i32, i32* @UCB_TS_CR_TSPX_POW, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @UCB_TS_CR_MODE_PRES, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @UCB_TS_CR_BIAS_ENA, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @ucb1x00_reg_write(i32 %14, i32 %15, i32 %22)
  %24 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %2, align 8
  %25 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UCB_TS_CR, align 4
  %28 = load i32, i32* @UCB_TS_CR_TSMX_GND, align 4
  %29 = load i32, i32* @UCB_TS_CR_TSPX_POW, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @UCB_TS_CR_MODE_PRES, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @UCB_TS_CR_BIAS_ENA, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @ucb1x00_reg_write(i32 %26, i32 %27, i32 %34)
  br label %36

36:                                               ; preds = %11, %5
  %37 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %2, align 8
  %38 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UCB_TS_CR, align 4
  %41 = load i32, i32* @UCB_TS_CR_TSMX_GND, align 4
  %42 = load i32, i32* @UCB_TS_CR_TSPX_POW, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @UCB_TS_CR_MODE_POS, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @UCB_TS_CR_BIAS_ENA, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @ucb1x00_reg_write(i32 %39, i32 %40, i32 %47)
  %49 = call i32 @udelay(i32 55)
  %50 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %2, align 8
  %51 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @UCB_ADC_INP_TSPY, align 4
  %54 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %2, align 8
  %55 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ucb1x00_adc_read(i32 %52, i32 %53, i32 %56)
  ret i32 %57
}

declare dso_local i64 @machine_is_collie(...) #1

declare dso_local i32 @ucb1x00_io_write(i32, i32, i32) #1

declare dso_local i32 @ucb1x00_reg_write(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ucb1x00_adc_read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
