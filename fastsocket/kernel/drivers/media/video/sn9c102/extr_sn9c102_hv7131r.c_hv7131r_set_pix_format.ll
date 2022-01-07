; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_hv7131r.c_hv7131r_set_pix_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_hv7131r.c_hv7131r_set_pix_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_pix_format = type { i32 }

@V4L2_PIX_FMT_SBGGR8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_pix_format*)* @hv7131r_set_pix_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv7131r_set_pix_format(%struct.sn9c102_device* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca %struct.sn9c102_device*, align 8
  %4 = alloca %struct.v4l2_pix_format*, align 8
  %5 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %3, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %7 = call i32 @sn9c102_get_bridge(%struct.sn9c102_device* %6)
  switch i32 %7, label %58 [
    i32 130, label %8
    i32 129, label %33
    i32 128, label %33
  ]

8:                                                ; preds = %2
  %9 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @V4L2_PIX_FMT_SBGGR8, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %16 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %15, i32 160, i32 25)
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %20 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %19, i32 1, i32 4)
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %32

23:                                               ; preds = %8
  %24 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %25 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %24, i32 48, i32 25)
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %29 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %28, i32 1, i32 4)
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %23, %14
  br label %59

33:                                               ; preds = %2, %2
  %34 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @V4L2_PIX_FMT_SBGGR8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %41 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %40, i32 165, i32 23)
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %45 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %44, i32 1, i32 36)
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %57

48:                                               ; preds = %33
  %49 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %50 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %49, i32 163, i32 23)
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %54 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %53, i32 1, i32 4)
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %48, %39
  br label %59

58:                                               ; preds = %2
  br label %59

59:                                               ; preds = %58, %57, %32
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @sn9c102_get_bridge(%struct.sn9c102_device*) #1

declare dso_local i32 @sn9c102_write_reg(%struct.sn9c102_device*, i32, i32) #1

declare dso_local i32 @sn9c102_i2c_write(%struct.sn9c102_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
