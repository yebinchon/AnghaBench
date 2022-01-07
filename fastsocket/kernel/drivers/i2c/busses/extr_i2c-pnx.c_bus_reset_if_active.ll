; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pnx.c_bus_reset_if_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pnx.c_bus_reset_if_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32, %struct.i2c_pnx_algo_data* }
%struct.i2c_pnx_algo_data = type { i32 }

@mstatus_active = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: Bus is still active after xfer. Reset it...\0A\00", align 1
@mcntrl_reset = common dso_local global i32 0, align 4
@I2C_PNX_TIMEOUT = common dso_local global i32 0, align 4
@mstatus_rfe = common dso_local global i32 0, align 4
@mstatus_tfe = common dso_local global i32 0, align 4
@mstatus_nai = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @bus_reset_if_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bus_reset_if_active(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.i2c_pnx_algo_data*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %5, i32 0, i32 2
  %7 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %6, align 8
  store %struct.i2c_pnx_algo_data* %7, %struct.i2c_pnx_algo_data** %3, align 8
  %8 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %9 = call i32 @I2C_REG_STS(%struct.i2c_pnx_algo_data* %8)
  %10 = call i32 @ioread32(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @mstatus_active, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %15, i32 0, i32 1
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %22 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %21)
  %23 = call i32 @ioread32(i32 %22)
  %24 = load i32, i32* @mcntrl_reset, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %27 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %26)
  %28 = call i32 @iowrite32(i32 %25, i32 %27)
  %29 = load i32, i32* @I2C_PNX_TIMEOUT, align 4
  %30 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %31 = call i32 @wait_reset(i32 %29, %struct.i2c_pnx_algo_data* %30)
  br label %73

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @mstatus_rfe, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @mstatus_tfe, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %44 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %43)
  %45 = call i32 @ioread32(i32 %44)
  %46 = load i32, i32* @mcntrl_reset, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %49 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %48)
  %50 = call i32 @iowrite32(i32 %47, i32 %49)
  %51 = load i32, i32* @I2C_PNX_TIMEOUT, align 4
  %52 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %53 = call i32 @wait_reset(i32 %51, %struct.i2c_pnx_algo_data* %52)
  br label %72

54:                                               ; preds = %37
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @mstatus_nai, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %61 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %60)
  %62 = call i32 @ioread32(i32 %61)
  %63 = load i32, i32* @mcntrl_reset, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %66 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %65)
  %67 = call i32 @iowrite32(i32 %64, i32 %66)
  %68 = load i32, i32* @I2C_PNX_TIMEOUT, align 4
  %69 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %3, align 8
  %70 = call i32 @wait_reset(i32 %68, %struct.i2c_pnx_algo_data* %69)
  br label %71

71:                                               ; preds = %59, %54
  br label %72

72:                                               ; preds = %71, %42
  br label %73

73:                                               ; preds = %72, %14
  ret void
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @I2C_REG_STS(%struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @wait_reset(i32, %struct.i2c_pnx_algo_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
