; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-davinci.c_terminate_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-davinci.c_terminate_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_i2c_dev = type { i32, i32 }

@DAVINCI_I2C_MDR_REG = common dso_local global i32 0, align 4
@DAVINCI_I2C_MDR_NACK = common dso_local global i32 0, align 4
@DAVINCI_I2C_DRR_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"RDR IRQ while no data requested\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_i2c_dev*)* @terminate_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminate_read(%struct.davinci_i2c_dev* %0) #0 {
  %2 = alloca %struct.davinci_i2c_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.davinci_i2c_dev* %0, %struct.davinci_i2c_dev** %2, align 8
  %4 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %5 = load i32, i32* @DAVINCI_I2C_MDR_REG, align 4
  %6 = call i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @DAVINCI_I2C_MDR_NACK, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %11 = load i32, i32* @DAVINCI_I2C_MDR_REG, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %10, i32 %11, i32 %12)
  %14 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %15 = load i32, i32* @DAVINCI_I2C_DRR_REG, align 4
  %16 = call i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev* %14, i32 %15)
  %17 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %18 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %23 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev*, i32) #1

declare dso_local i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
