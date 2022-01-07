; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.highlander_i2c_dev = type { i32, i32, i64, i32 }

@SMTRDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"write data[%x] 0x%04x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.highlander_i2c_dev*)* @highlander_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @highlander_i2c_write(%struct.highlander_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.highlander_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16 x i32], align 16
  store %struct.highlander_i2c_dev* %0, %struct.highlander_i2c_dev** %3, align 8
  %7 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %8 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %11 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %12 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @smbus_write_data(i32 %9, i32* %10, i32 %13)
  %15 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %16 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %48, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %30 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SMTRDR, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = add i64 %33, %36
  %38 = call i32 @iowrite16(i32 %28, i64 %37)
  %39 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %40 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %24
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %20

51:                                               ; preds = %20
  %52 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %53 = call i64 @highlander_i2c_wait_for_bbsy(%struct.highlander_i2c_dev* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %63

58:                                               ; preds = %51
  %59 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %60 = call i32 @highlander_i2c_start(%struct.highlander_i2c_dev* %59)
  %61 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %3, align 8
  %62 = call i32 @highlander_i2c_wait_xfer_done(%struct.highlander_i2c_dev* %61)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @smbus_write_data(i32, i32*, i32) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i64 @highlander_i2c_wait_for_bbsy(%struct.highlander_i2c_dev*) #1

declare dso_local i32 @highlander_i2c_start(%struct.highlander_i2c_dev*) #1

declare dso_local i32 @highlander_i2c_wait_xfer_done(%struct.highlander_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
