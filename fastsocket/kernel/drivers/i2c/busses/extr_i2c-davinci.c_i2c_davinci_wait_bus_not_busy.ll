; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-davinci.c_i2c_davinci_wait_bus_not_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-davinci.c_i2c_davinci_wait_bus_not_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_i2c_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@DAVINCI_I2C_STR_REG = common dso_local global i32 0, align 4
@DAVINCI_I2C_STR_BB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"timeout waiting for bus ready\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.davinci_i2c_dev*, i8)* @i2c_davinci_wait_bus_not_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_davinci_wait_bus_not_busy(%struct.davinci_i2c_dev* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.davinci_i2c_dev*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.davinci_i2c_dev* %0, %struct.davinci_i2c_dev** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load i64, i64* @jiffies, align 8
  %8 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %9 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %7, %11
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %37, %2
  %14 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %15 = load i32, i32* @DAVINCI_I2C_STR_REG, align 4
  %16 = call i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev* %14, i32 %15)
  %17 = load i32, i32* @DAVINCI_I2C_STR_BB, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %13
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @time_after(i64 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %4, align 8
  %27 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ETIMEDOUT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %20
  %33 = load i8, i8* %5, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @schedule_timeout(i32 1)
  br label %37

37:                                               ; preds = %35, %32
  br label %13

38:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @schedule_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
