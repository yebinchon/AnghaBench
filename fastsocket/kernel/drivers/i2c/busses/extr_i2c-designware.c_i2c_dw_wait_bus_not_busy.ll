; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-designware.c_i2c_dw_wait_bus_not_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-designware.c_i2c_dw_wait_bus_not_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32, i64 }

@TIMEOUT = common dso_local global i32 0, align 4
@DW_IC_STATUS = common dso_local global i64 0, align 8
@DW_IC_STATUS_ACTIVITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"timeout waiting for bus ready\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_i2c_dev*)* @i2c_dw_wait_bus_not_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_dw_wait_bus_not_busy(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_i2c_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %3, align 8
  %5 = load i32, i32* @TIMEOUT, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %8 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DW_IC_STATUS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readb(i64 %11)
  %13 = load i32, i32* @DW_IC_STATUS_ACTIVITY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %6
  %17 = load i32, i32* %4, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %21 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_warn(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ETIMEDOUT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %31

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %4, align 4
  %29 = call i32 @mdelay(i32 1)
  br label %6

30:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
