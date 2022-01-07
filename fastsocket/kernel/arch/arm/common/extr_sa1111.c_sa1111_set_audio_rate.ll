; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_sa1111.c_sa1111_set_audio_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_sa1111.c_sa1111_set_audio_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1111_dev = type { i64 }
%struct.sa1111 = type { i64 }

@SA1111_DEVID_SAC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SA1111_SKAUD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa1111_set_audio_rate(%struct.sa1111_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sa1111_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sa1111*, align 8
  %7 = alloca i32, align 4
  store %struct.sa1111_dev* %0, %struct.sa1111_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sa1111_dev*, %struct.sa1111_dev** %4, align 8
  %9 = call %struct.sa1111* @sa1111_chip_driver(%struct.sa1111_dev* %8)
  store %struct.sa1111* %9, %struct.sa1111** %6, align 8
  %10 = load %struct.sa1111_dev*, %struct.sa1111_dev** %4, align 8
  %11 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SA1111_DEVID_SAC, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load %struct.sa1111*, %struct.sa1111** %6, align 8
  %20 = call i32 @__sa1111_pll_clock(%struct.sa1111* %19)
  %21 = sdiv i32 %20, 256
  %22 = load i32, i32* %5, align 4
  %23 = sdiv i32 %22, 2
  %24 = add nsw i32 %21, %23
  %25 = load i32, i32* %5, align 4
  %26 = sdiv i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %7, align 4
  %32 = icmp ugt i32 %31, 128
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 128, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %7, align 4
  %36 = sub i32 %35, 1
  %37 = load %struct.sa1111*, %struct.sa1111** %6, align 8
  %38 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SA1111_SKAUD, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @sa1111_writel(i32 %36, i64 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %34, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.sa1111* @sa1111_chip_driver(%struct.sa1111_dev*) #1

declare dso_local i32 @__sa1111_pll_clock(%struct.sa1111*) #1

declare dso_local i32 @sa1111_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
