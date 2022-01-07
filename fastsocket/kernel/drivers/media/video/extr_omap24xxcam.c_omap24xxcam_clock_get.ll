; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_clock_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_device = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"can't get camera fck\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ick\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"can't get camera ick\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap24xxcam_device*)* @omap24xxcam_clock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap24xxcam_clock_get(%struct.omap24xxcam_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap24xxcam_device*, align 8
  %4 = alloca i32, align 4
  store %struct.omap24xxcam_device* %0, %struct.omap24xxcam_device** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %6 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @clk_get(i32 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %10 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %12 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %18 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %22 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @PTR_ERR(i8* %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %26 = call i32 @omap24xxcam_clock_put(%struct.omap24xxcam_device* %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %53

28:                                               ; preds = %1
  %29 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %30 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @clk_get(i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %34 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %36 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @IS_ERR(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %28
  %41 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %42 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %46 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @PTR_ERR(i8* %47)
  store i32 %48, i32* %4, align 4
  %49 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %50 = call i32 @omap24xxcam_clock_put(%struct.omap24xxcam_device* %49)
  br label %51

51:                                               ; preds = %40, %28
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %16
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i8* @clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @omap24xxcam_clock_put(%struct.omap24xxcam_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
