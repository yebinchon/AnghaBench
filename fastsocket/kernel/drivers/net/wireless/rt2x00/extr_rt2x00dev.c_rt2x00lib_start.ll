; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i64, i64, i64 }

@DEVICE_STATE_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00lib_start(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %5 = load i32, i32* @DEVICE_STATE_STARTED, align 4
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %6, i32 0, i32 0
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = call i32 @rt2x00lib_load_firmware(%struct.rt2x00_dev* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %43

18:                                               ; preds = %11
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %20 = call i32 @rt2x00lib_initialize(%struct.rt2x00_dev* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %18
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = call i32 @rt2x00lib_enable_radio(%struct.rt2x00_dev* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %43

38:                                               ; preds = %25
  %39 = load i32, i32* @DEVICE_STATE_STARTED, align 4
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %41 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %40, i32 0, i32 0
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %36, %23, %16, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00lib_load_firmware(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00lib_initialize(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00lib_enable_radio(%struct.rt2x00_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
