; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i32* }

@SYSCONFIG1_RDS = common dso_local global i32 0, align 4
@SYSCONFIG1 = common dso_local global i64 0, align 8
@POWERCFG_DMUTE = common dso_local global i32 0, align 4
@POWERCFG = common dso_local global i64 0, align 8
@POWERCFG_ENABLE = common dso_local global i32 0, align 4
@POWERCFG_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si470x_stop(%struct.si470x_device* %0) #0 {
  %2 = alloca %struct.si470x_device*, align 8
  %3 = alloca i32, align 4
  store %struct.si470x_device* %0, %struct.si470x_device** %2, align 8
  %4 = load i32, i32* @SYSCONFIG1_RDS, align 4
  %5 = xor i32 %4, -1
  %6 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %7 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @SYSCONFIG1, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %5
  store i32 %12, i32* %10, align 4
  %13 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %14 = load i64, i64* @SYSCONFIG1, align 8
  %15 = call i32 @si470x_set_register(%struct.si470x_device* %13, i64 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %42

19:                                               ; preds = %1
  %20 = load i32, i32* @POWERCFG_DMUTE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %23 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @POWERCFG, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %21
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @POWERCFG_ENABLE, align 4
  %30 = load i32, i32* @POWERCFG_DISABLE, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %33 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @POWERCFG, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %31
  store i32 %38, i32* %36, align 4
  %39 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %40 = load i64, i64* @POWERCFG, align 8
  %41 = call i32 @si470x_set_register(%struct.si470x_device* %39, i64 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %19, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @si470x_set_register(%struct.si470x_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
