; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_write_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_iop3xx_data = type { i64 }

@CR_OFFSET = common dso_local global i64 0, align 8
@DBR_OFFSET = common dso_local global i64 0, align 8
@IOP3XX_ICR_MSTART = common dso_local global i64 0, align 8
@IOP3XX_ICR_MSTOP = common dso_local global i64 0, align 8
@IOP3XX_ICR_TBYTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_iop3xx_data*, i8, i32)* @iop3xx_i2c_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop3xx_i2c_write_byte(%struct.i2c_algo_iop3xx_data* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_algo_iop3xx_data*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_algo_iop3xx_data* %0, %struct.i2c_algo_iop3xx_data** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CR_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @__raw_readl(i64 %14)
  store i64 %15, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load i8, i8* %5, align 1
  %17 = sext i8 %16 to i64
  %18 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DBR_OFFSET, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @__raw_writel(i64 %17, i64 %22)
  %24 = load i64, i64* @IOP3XX_ICR_MSTART, align 8
  %25 = xor i64 %24, -1
  %26 = load i64, i64* %7, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i64, i64* @IOP3XX_ICR_MSTOP, align 8
  %32 = load i64, i64* %7, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %7, align 8
  br label %39

34:                                               ; preds = %3
  %35 = load i64, i64* @IOP3XX_ICR_MSTOP, align 8
  %36 = xor i64 %35, -1
  %37 = load i64, i64* %7, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i64, i64* @IOP3XX_ICR_TBYTE, align 8
  %41 = load i64, i64* %7, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CR_OFFSET, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @__raw_writel(i64 %43, i64 %48)
  %50 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %51 = call i32 @iop3xx_i2c_wait_tx_done(%struct.i2c_algo_iop3xx_data* %50, i32* %8)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @iop3xx_i2c_wait_tx_done(%struct.i2c_algo_iop3xx_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
