; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_lm75_sensor.c_wf_lm75_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_lm75_sensor.c_wf_lm75_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_sensor = type { i32 }
%struct.wf_lm75_sensor = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"wf_lm75: Initializing %s, cfg was: %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wf_sensor*, i32*)* @wf_lm75_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_lm75_get(%struct.wf_sensor* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wf_sensor*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wf_lm75_sensor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wf_sensor* %0, %struct.wf_sensor** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.wf_sensor*, %struct.wf_sensor** %4, align 8
  %11 = call %struct.wf_lm75_sensor* @wf_to_lm75(%struct.wf_sensor* %10)
  store %struct.wf_lm75_sensor* %11, %struct.wf_lm75_sensor** %6, align 8
  %12 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %13 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %55

19:                                               ; preds = %2
  %20 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %21 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %19
  %25 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %26 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @i2c_smbus_read_byte_data(i32* %27, i32 1)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.wf_sensor*, %struct.wf_sensor** %4, align 8
  %30 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, -2
  store i32 %35, i32* %8, align 4
  %36 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %37 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @i2c_smbus_write_byte_data(i32* %38, i32 1, i32 %39)
  %41 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %42 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = call i32 @msleep(i32 200)
  br label %44

44:                                               ; preds = %24, %19
  %45 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %46 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @i2c_smbus_read_word_data(i32* %47, i32 0)
  %49 = call i64 @le16_to_cpu(i32 %48)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 %51, 8
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %44, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.wf_lm75_sensor* @wf_to_lm75(%struct.wf_sensor*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32*, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
