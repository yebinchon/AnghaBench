; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_wait_for_bbsy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_wait_for_bbsy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.highlander_i2c_dev = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@iic_timeout = common dso_local global i32 0, align 4
@SMCR = common dso_local global i64 0, align 8
@SMCR_BBSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"timeout waiting for bus ready\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.highlander_i2c_dev*)* @highlander_i2c_wait_for_bbsy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @highlander_i2c_wait_for_bbsy(%struct.highlander_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.highlander_i2c_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.highlander_i2c_dev* %0, %struct.highlander_i2c_dev** %3, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i32, i32* @iic_timeout, align 4
  %7 = call i64 @msecs_to_jiffies(i32 %6)
  %8 = add i64 %5, %7
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %31, %1
  %10 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %11 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SMCR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @ioread16(i64 %14)
  %16 = load i32, i32* @SMCR_BBSY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %9
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @time_after(i64 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %26 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_warn(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %34

31:                                               ; preds = %19
  %32 = call i32 @msleep(i32 1)
  br label %9

33:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
