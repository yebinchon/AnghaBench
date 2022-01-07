; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_wait_while_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_wait_while_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stu300_dev = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@BUSY_RELEASE_ATTEMPTS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@STU300_TIMEOUT = common dso_local global i64 0, align 8
@I2C_SR1 = common dso_local global i64 0, align 8
@I2C_SR1_BUSY_IND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"transaction timed out waiting for device to be free (not busy). Attempt: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"base address = 0x%08x, reinit hardware\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"giving up after %d attempts to reset the bus.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stu300_dev*)* @stu300_wait_while_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stu300_wait_while_busy(%struct.stu300_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stu300_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.stu300_dev* %0, %struct.stu300_dev** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %52, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @BUSY_RELEASE_ATTEMPTS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %55

10:                                               ; preds = %6
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* @STU300_TIMEOUT, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %31, %10
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @time_after(i64 %15, i64 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.stu300_dev*, %struct.stu300_dev** %3, align 8
  %22 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @I2C_SR1, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @stu300_r8(i64 %25)
  %27 = load i32, i32* @I2C_SR1_BUSY_IND, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %64

31:                                               ; preds = %20
  %32 = call i32 @msleep(i32 1)
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.stu300_dev*, %struct.stu300_dev** %3, align 8
  %35 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.stu300_dev*, %struct.stu300_dev** %3, align 8
  %42 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.stu300_dev*, %struct.stu300_dev** %3, align 8
  %46 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.stu300_dev*, %struct.stu300_dev** %3, align 8
  %51 = call i32 @stu300_init_hw(%struct.stu300_dev* %50)
  br label %52

52:                                               ; preds = %33
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %6

55:                                               ; preds = %6
  %56 = load %struct.stu300_dev*, %struct.stu300_dev** %3, align 8
  %57 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* @BUSY_RELEASE_ATTEMPTS, align 4
  %61 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %55, %30
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @stu300_r8(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @stu300_init_hw(%struct.stu300_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
