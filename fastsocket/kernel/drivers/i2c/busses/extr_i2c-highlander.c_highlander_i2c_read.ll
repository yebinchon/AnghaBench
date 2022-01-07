; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.highlander_i2c_dev = type { i32, i64, i32, i32, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Arbitration loss\0A\00", align 1
@iic_read_delay = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@SMTRDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"read data[%x] 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.highlander_i2c_dev*)* @highlander_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @highlander_i2c_read(%struct.highlander_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.highlander_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16 x i32], align 16
  store %struct.highlander_i2c_dev* %0, %struct.highlander_i2c_dev** %3, align 8
  %7 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %8 = call i64 @highlander_i2c_wait_for_bbsy(%struct.highlander_i2c_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %98

13:                                               ; preds = %1
  %14 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %15 = call i32 @highlander_i2c_start(%struct.highlander_i2c_dev* %14)
  %16 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %17 = call i64 @highlander_i2c_wait_xfer_done(%struct.highlander_i2c_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %21 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %98

26:                                               ; preds = %13
  %27 = load i64, i64* @iic_read_delay, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load i64, i64* @jiffies, align 8
  %31 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %32 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @iic_read_delay, align 8
  %35 = call i64 @msecs_to_jiffies(i64 %34)
  %36 = add nsw i64 %33, %35
  %37 = call i64 @time_before(i64 %30, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %29
  %40 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %41 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @iic_read_delay, align 8
  %44 = call i64 @msecs_to_jiffies(i64 %43)
  %45 = add nsw i64 %42, %44
  %46 = load i64, i64* @jiffies, align 8
  %47 = sub nsw i64 %45, %46
  %48 = call i32 @jiffies_to_msecs(i64 %47)
  %49 = call i32 @msleep(i32 %48)
  br label %50

50:                                               ; preds = %39, %29, %26
  %51 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %52 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  %55 = ashr i32 %54, 1
  store i32 %55, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %83, %50
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %56
  %61 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %62 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SMTRDR, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = add i64 %65, %68
  %70 = call i32 @ioread16(i64 %69)
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %72
  store i32 %70, i32* %73, align 4
  %74 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %75 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_dbg(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %81)
  br label %83

83:                                               ; preds = %60
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %56

86:                                               ; preds = %56
  %87 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %88 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %89 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %92 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @smbus_read_data(i32* %87, i32 %90, i32 %93)
  %95 = load i64, i64* @jiffies, align 8
  %96 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %97 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %86, %19, %10
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i64 @highlander_i2c_wait_for_bbsy(%struct.highlander_i2c_dev*) #1

declare dso_local i32 @highlander_i2c_start(%struct.highlander_i2c_dev*) #1

declare dso_local i64 @highlander_i2c_wait_xfer_done(%struct.highlander_i2c_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @smbus_read_data(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
