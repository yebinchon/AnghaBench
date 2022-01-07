; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_core_xclk_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_core_xclk_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_device = type { i64 }

@CAM_MCLK = common dso_local global i32 0, align 4
@CC_REG_OFFSET = common dso_local global i64 0, align 8
@CC_CTRL_XCLK = common dso_local global i32 0, align 4
@CC_CTRL_XCLK_DIV_BYPASS = common dso_local global i32 0, align 4
@CC_CTRL_XCLK_DIV_STABLE_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap24xxcam_device*, i32)* @omap24xxcam_core_xclk_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap24xxcam_core_xclk_set(%struct.omap24xxcam_device* %0, i32 %1) #0 {
  %3 = alloca %struct.omap24xxcam_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omap24xxcam_device* %0, %struct.omap24xxcam_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  %9 = load i32, i32* @CAM_MCLK, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %16 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CC_REG_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* @CC_CTRL_XCLK, align 4
  %21 = load i32, i32* @CC_CTRL_XCLK_DIV_BYPASS, align 4
  %22 = call i32 @omap24xxcam_reg_out(i64 %19, i32 %20, i32 %21)
  br label %32

23:                                               ; preds = %8
  %24 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %25 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CC_REG_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* @CC_CTRL_XCLK, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @omap24xxcam_reg_out(i64 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %14
  br label %42

33:                                               ; preds = %2
  %34 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %3, align 8
  %35 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CC_REG_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* @CC_CTRL_XCLK, align 4
  %40 = load i32, i32* @CC_CTRL_XCLK_DIV_STABLE_LOW, align 4
  %41 = call i32 @omap24xxcam_reg_out(i64 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32 @omap24xxcam_reg_out(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
