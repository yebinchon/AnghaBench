; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i32* }

@POWERCFG_DMUTE = common dso_local global i32 0, align 4
@POWERCFG_ENABLE = common dso_local global i32 0, align 4
@POWERCFG_RDSM = common dso_local global i32 0, align 4
@POWERCFG = common dso_local global i64 0, align 8
@SYSCONFIG1_DE = common dso_local global i32 0, align 4
@SYSCONFIG1 = common dso_local global i64 0, align 8
@band = common dso_local global i32 0, align 4
@SYSCONFIG2_BAND = common dso_local global i32 0, align 4
@space = common dso_local global i32 0, align 4
@SYSCONFIG2_SPACE = common dso_local global i32 0, align 4
@SYSCONFIG2 = common dso_local global i64 0, align 8
@CHANNEL = common dso_local global i64 0, align 8
@CHANNEL_CHAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si470x_start(%struct.si470x_device* %0) #0 {
  %2 = alloca %struct.si470x_device*, align 8
  %3 = alloca i32, align 4
  store %struct.si470x_device* %0, %struct.si470x_device** %2, align 8
  %4 = load i32, i32* @POWERCFG_DMUTE, align 4
  %5 = load i32, i32* @POWERCFG_ENABLE, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @POWERCFG_RDSM, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %10 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @POWERCFG, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32 %8, i32* %13, align 4
  %14 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %15 = load i64, i64* @POWERCFG, align 8
  %16 = call i32 @si470x_set_register(%struct.si470x_device* %14, i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %67

20:                                               ; preds = %1
  %21 = load i32, i32* @SYSCONFIG1_DE, align 4
  %22 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %23 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @SYSCONFIG1, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %21, i32* %26, align 4
  %27 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %28 = load i64, i64* @SYSCONFIG1, align 8
  %29 = call i32 @si470x_set_register(%struct.si470x_device* %27, i64 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %67

33:                                               ; preds = %20
  %34 = load i32, i32* @band, align 4
  %35 = shl i32 %34, 6
  %36 = load i32, i32* @SYSCONFIG2_BAND, align 4
  %37 = and i32 %35, %36
  %38 = or i32 16128, %37
  %39 = load i32, i32* @space, align 4
  %40 = shl i32 %39, 4
  %41 = load i32, i32* @SYSCONFIG2_SPACE, align 4
  %42 = and i32 %40, %41
  %43 = or i32 %38, %42
  %44 = or i32 %43, 15
  %45 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %46 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @SYSCONFIG2, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %44, i32* %49, align 4
  %50 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %51 = load i64, i64* @SYSCONFIG2, align 8
  %52 = call i32 @si470x_set_register(%struct.si470x_device* %50, i64 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %33
  br label %67

56:                                               ; preds = %33
  %57 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %58 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %59 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @CHANNEL, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CHANNEL_CHAN, align 4
  %65 = and i32 %63, %64
  %66 = call i32 @si470x_set_chan(%struct.si470x_device* %57, i32 %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %56, %55, %32, %19
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @si470x_set_register(%struct.si470x_device*, i64) #1

declare dso_local i32 @si470x_set_chan(%struct.si470x_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
