; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_get_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i32* }

@SYSCONFIG2 = common dso_local global i64 0, align 8
@SYSCONFIG2_SPACE = common dso_local global i32 0, align 4
@FREQ_MUL = common dso_local global double 0.000000e+00, align 8
@SYSCONFIG2_BAND = common dso_local global i32 0, align 4
@READCHAN = common dso_local global i64 0, align 8
@READCHAN_READCHAN = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si470x_device*, i32*)* @si470x_get_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_get_freq(%struct.si470x_device* %0, i32* %1) #0 {
  %3 = alloca %struct.si470x_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.si470x_device* %0, %struct.si470x_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %10 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @SYSCONFIG2, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SYSCONFIG2_SPACE, align 4
  %16 = and i32 %14, %15
  %17 = ashr i32 %16, 4
  switch i32 %17, label %26 [
    i32 0, label %18
    i32 1, label %22
  ]

18:                                               ; preds = %2
  %19 = load double, double* @FREQ_MUL, align 8
  %20 = fmul double 2.000000e-01, %19
  %21 = fptoui double %20 to i32
  store i32 %21, i32* %5, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load double, double* @FREQ_MUL, align 8
  %24 = fmul double 1.000000e-01, %23
  %25 = fptoui double %24 to i32
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load double, double* @FREQ_MUL, align 8
  %28 = fmul double 5.000000e-02, %27
  %29 = fptoui double %28 to i32
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %22, %18
  %31 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %32 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @SYSCONFIG2, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SYSCONFIG2_BAND, align 4
  %38 = and i32 %36, %37
  %39 = ashr i32 %38, 6
  switch i32 %39, label %44 [
    i32 0, label %40
    i32 2, label %48
  ]

40:                                               ; preds = %30
  %41 = load double, double* @FREQ_MUL, align 8
  %42 = fmul double 8.750000e+01, %41
  %43 = fptoui double %42 to i32
  store i32 %43, i32* %6, align 4
  br label %52

44:                                               ; preds = %30
  %45 = load double, double* @FREQ_MUL, align 8
  %46 = fmul double 7.600000e+01, %45
  %47 = fptoui double %46 to i32
  store i32 %47, i32* %6, align 4
  br label %52

48:                                               ; preds = %30
  %49 = load double, double* @FREQ_MUL, align 8
  %50 = fmul double 7.600000e+01, %49
  %51 = fptoui double %50 to i32
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %44, %40
  %53 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %54 = load i64, i64* @READCHAN, align 8
  %55 = call i32 @si470x_get_register(%struct.si470x_device* %53, i64 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %57 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @READCHAN, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i16, i16* @READCHAN_READCHAN, align 2
  %63 = zext i16 %62 to i32
  %64 = and i32 %61, %63
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %7, align 2
  %66 = load i16, i16* %7, align 2
  %67 = zext i16 %66 to i32
  %68 = load i32, i32* %5, align 4
  %69 = mul i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %69, %70
  %72 = load i32*, i32** %4, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32 @si470x_get_register(%struct.si470x_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
