; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pnx.c_i2c_pnx_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pnx.c_i2c_pnx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.i2c_pnx_algo_data* }
%struct.i2c_pnx_algo_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"Master timed out. stat = %04x, cntrl = %04x. Resetting master...\0A\00", align 1
@mcntrl_afie = common dso_local global i32 0, align 4
@mcntrl_naie = common dso_local global i32 0, align 4
@mcntrl_rffie = common dso_local global i32 0, align 4
@mcntrl_drmie = common dso_local global i32 0, align 4
@mcntrl_reset = common dso_local global i32 0, align 4
@I2C_PNX_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @i2c_pnx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_pnx_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.i2c_pnx_algo_data*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.i2c_adapter*
  store %struct.i2c_adapter* %7, %struct.i2c_adapter** %3, align 8
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %8, i32 0, i32 1
  %10 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %9, align 8
  store %struct.i2c_pnx_algo_data* %10, %struct.i2c_pnx_algo_data** %4, align 8
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %11, i32 0, i32 0
  %13 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %4, align 8
  %14 = call i32 @I2C_REG_STS(%struct.i2c_pnx_algo_data* %13)
  %15 = call i32 @ioread32(i32 %14)
  %16 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %4, align 8
  %17 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %16)
  %18 = call i32 @ioread32(i32 %17)
  %19 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %4, align 8
  %21 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %20)
  %22 = call i32 @ioread32(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @mcntrl_afie, align 4
  %24 = load i32, i32* @mcntrl_naie, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @mcntrl_rffie, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @mcntrl_drmie, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %4, align 8
  %35 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %34)
  %36 = call i32 @iowrite32(i32 %33, i32 %35)
  %37 = load i32, i32* @mcntrl_reset, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %4, align 8
  %42 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %41)
  %43 = call i32 @iowrite32(i32 %40, i32 %42)
  %44 = load i32, i32* @I2C_PNX_TIMEOUT, align 4
  %45 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %4, align 8
  %46 = call i32 @wait_reset(i32 %44, %struct.i2c_pnx_algo_data* %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  %49 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_pnx_algo_data, %struct.i2c_pnx_algo_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @complete(i32* %54)
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @I2C_REG_STS(%struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @wait_reset(i32, %struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
