; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_set_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i32* }

@SYSCONFIG2 = common dso_local global i64 0, align 8
@SYSCONFIG2_SPACE = common dso_local global i32 0, align 4
@FREQ_MUL = common dso_local global double 0.000000e+00, align 8
@SYSCONFIG2_BAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si470x_set_freq(%struct.si470x_device* %0, i32 %1) #0 {
  %3 = alloca %struct.si470x_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store %struct.si470x_device* %0, %struct.si470x_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %9 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @SYSCONFIG2, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SYSCONFIG2_SPACE, align 4
  %15 = and i32 %13, %14
  %16 = ashr i32 %15, 4
  switch i32 %16, label %25 [
    i32 0, label %17
    i32 1, label %21
  ]

17:                                               ; preds = %2
  %18 = load double, double* @FREQ_MUL, align 8
  %19 = fmul double 2.000000e-01, %18
  %20 = fptoui double %19 to i32
  store i32 %20, i32* %5, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load double, double* @FREQ_MUL, align 8
  %23 = fmul double 1.000000e-01, %22
  %24 = fptoui double %23 to i32
  store i32 %24, i32* %5, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load double, double* @FREQ_MUL, align 8
  %27 = fmul double 5.000000e-02, %26
  %28 = fptoui double %27 to i32
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %21, %17
  %30 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %31 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @SYSCONFIG2, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SYSCONFIG2_BAND, align 4
  %37 = and i32 %35, %36
  %38 = ashr i32 %37, 6
  switch i32 %38, label %43 [
    i32 0, label %39
    i32 2, label %47
  ]

39:                                               ; preds = %29
  %40 = load double, double* @FREQ_MUL, align 8
  %41 = fmul double 8.750000e+01, %40
  %42 = fptoui double %41 to i32
  store i32 %42, i32* %6, align 4
  br label %51

43:                                               ; preds = %29
  %44 = load double, double* @FREQ_MUL, align 8
  %45 = fmul double 7.600000e+01, %44
  %46 = fptoui double %45 to i32
  store i32 %46, i32* %6, align 4
  br label %51

47:                                               ; preds = %29
  %48 = load double, double* @FREQ_MUL, align 8
  %49 = fmul double 7.600000e+01, %48
  %50 = fptoui double %49 to i32
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %43, %39
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sub i32 %52, %53
  %55 = load i32, i32* %5, align 4
  %56 = udiv i32 %54, %55
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %7, align 2
  %58 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %59 = load i16, i16* %7, align 2
  %60 = call i32 @si470x_set_chan(%struct.si470x_device* %58, i16 zeroext %59)
  ret i32 %60
}

declare dso_local i32 @si470x_set_chan(%struct.si470x_device*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
