; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_read_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_iop3xx_data = type { i64 }

@CR_OFFSET = common dso_local global i64 0, align 8
@IOP3XX_ICR_MSTART = common dso_local global i64 0, align 8
@IOP3XX_ICR_MSTOP = common dso_local global i64 0, align 8
@IOP3XX_ICR_NACK = common dso_local global i64 0, align 8
@IOP3XX_ICR_TBYTE = common dso_local global i64 0, align 8
@DBR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_iop3xx_data*, i8*, i32)* @iop3xx_i2c_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop3xx_i2c_read_byte(%struct.i2c_algo_iop3xx_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_algo_iop3xx_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_algo_iop3xx_data* %0, %struct.i2c_algo_iop3xx_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CR_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i8* @__raw_readl(i64 %14)
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load i64, i64* @IOP3XX_ICR_MSTART, align 8
  %18 = xor i64 %17, -1
  %19 = load i64, i64* %7, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i64, i64* @IOP3XX_ICR_MSTOP, align 8
  %25 = load i64, i64* @IOP3XX_ICR_NACK, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* %7, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %7, align 8
  br label %36

29:                                               ; preds = %3
  %30 = load i64, i64* @IOP3XX_ICR_MSTOP, align 8
  %31 = load i64, i64* @IOP3XX_ICR_NACK, align 8
  %32 = or i64 %30, %31
  %33 = xor i64 %32, -1
  %34 = load i64, i64* %7, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %29, %23
  %37 = load i64, i64* @IOP3XX_ICR_TBYTE, align 8
  %38 = load i64, i64* %7, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CR_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @__raw_writel(i64 %40, i64 %45)
  %47 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %48 = call i32 @iop3xx_i2c_wait_rx_done(%struct.i2c_algo_iop3xx_data* %47, i32* %8)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DBR_OFFSET, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i8* @__raw_readl(i64 %53)
  %55 = ptrtoint i8* %54 to i8
  %56 = load i8*, i8** %5, align 8
  store i8 %55, i8* %56, align 1
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i8* @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @iop3xx_i2c_wait_rx_done(%struct.i2c_algo_iop3xx_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
