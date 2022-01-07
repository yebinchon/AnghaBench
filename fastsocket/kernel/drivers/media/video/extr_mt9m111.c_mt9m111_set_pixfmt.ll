; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_set_pixfmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_set_pixfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mt9m111 = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Pixel format not handled : %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @mt9m111_set_pixfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_set_pixfmt(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt9m111*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.mt9m111* @to_mt9m111(%struct.i2c_client* %7)
  store %struct.mt9m111* %8, %struct.mt9m111** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %50 [
    i32 132, label %10
    i32 133, label %13
    i32 135, label %16
    i32 134, label %19
    i32 131, label %22
    i32 130, label %29
    i32 129, label %36
    i32 128, label %43
  ]

10:                                               ; preds = %2
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = call i32 @mt9m111_setfmt_bayer8(%struct.i2c_client* %11)
  store i32 %12, i32* %6, align 4
  br label %57

13:                                               ; preds = %2
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = call i32 @mt9m111_setfmt_bayer10(%struct.i2c_client* %14)
  store i32 %15, i32* %6, align 4
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = call i32 @mt9m111_setfmt_rgb555(%struct.i2c_client* %17)
  store i32 %18, i32* %6, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = call i32 @mt9m111_setfmt_rgb565(%struct.i2c_client* %20)
  store i32 %21, i32* %6, align 4
  br label %57

22:                                               ; preds = %2
  %23 = load %struct.mt9m111*, %struct.mt9m111** %5, align 8
  %24 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.mt9m111*, %struct.mt9m111** %5, align 8
  %26 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %28 = call i32 @mt9m111_setfmt_yuv(%struct.i2c_client* %27)
  store i32 %28, i32* %6, align 4
  br label %57

29:                                               ; preds = %2
  %30 = load %struct.mt9m111*, %struct.mt9m111** %5, align 8
  %31 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.mt9m111*, %struct.mt9m111** %5, align 8
  %33 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = call i32 @mt9m111_setfmt_yuv(%struct.i2c_client* %34)
  store i32 %35, i32* %6, align 4
  br label %57

36:                                               ; preds = %2
  %37 = load %struct.mt9m111*, %struct.mt9m111** %5, align 8
  %38 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.mt9m111*, %struct.mt9m111** %5, align 8
  %40 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = call i32 @mt9m111_setfmt_yuv(%struct.i2c_client* %41)
  store i32 %42, i32* %6, align 4
  br label %57

43:                                               ; preds = %2
  %44 = load %struct.mt9m111*, %struct.mt9m111** %5, align 8
  %45 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.mt9m111*, %struct.mt9m111** %5, align 8
  %47 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %49 = call i32 @mt9m111_setfmt_yuv(%struct.i2c_client* %48)
  store i32 %49, i32* %6, align 4
  br label %57

50:                                               ; preds = %2
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %50, %43, %36, %29, %22, %19, %16, %13, %10
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.mt9m111* @to_mt9m111(%struct.i2c_client*) #1

declare dso_local i32 @mt9m111_setfmt_bayer8(%struct.i2c_client*) #1

declare dso_local i32 @mt9m111_setfmt_bayer10(%struct.i2c_client*) #1

declare dso_local i32 @mt9m111_setfmt_rgb555(%struct.i2c_client*) #1

declare dso_local i32 @mt9m111_setfmt_rgb565(%struct.i2c_client*) #1

declare dso_local i32 @mt9m111_setfmt_yuv(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
