; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_lm93_read_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_lm93_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_client = type { i32 }

@MAX_RETRIES = common dso_local global i32 0, align 4
@lm93_block_read_cmds = common dso_local global %struct.TYPE_2__* null, align 8
@lm93_block_buffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"lm93: block read data failed, command 0x%02x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i64, i64*)* @lm93_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm93_read_block(%struct.i2c_client* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %43, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @MAX_RETRIES, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm93_block_read_cmds, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @lm93_block_buffer, align 4
  %21 = call i32 @i2c_smbus_read_block_data(%struct.i2c_client* %14, i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm93_block_read_cmds, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %22, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %13
  br label %46

30:                                               ; preds = %13
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm93_block_read_cmds, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 3
  %41 = call i32 @mdelay(i32 %40)
  br label %42

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %9

46:                                               ; preds = %29, %9
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm93_block_read_cmds, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %47, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load i64*, i64** %6, align 8
  %56 = load i32, i32* @lm93_block_buffer, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm93_block_read_cmds, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memcpy(i64* %55, i32 %56, i32 %61)
  br label %64

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %54
  ret void
}

declare dso_local i32 @i2c_smbus_read_block_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
