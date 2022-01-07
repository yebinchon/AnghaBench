; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_clock_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_clock_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_device = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap24xxcam_device*)* @omap24xxcam_clock_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap24xxcam_clock_put(%struct.omap24xxcam_device* %0) #0 {
  %2 = alloca %struct.omap24xxcam_device*, align 8
  store %struct.omap24xxcam_device* %0, %struct.omap24xxcam_device** %2, align 8
  %3 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %4 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %9 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @IS_ERR(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %15 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @clk_put(i32* %16)
  br label %18

18:                                               ; preds = %13, %7, %1
  %19 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %20 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %25 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @IS_ERR(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %31 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @clk_put(i32* %32)
  br label %34

34:                                               ; preds = %29, %23, %18
  %35 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %36 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %38 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  ret void
}

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @clk_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
