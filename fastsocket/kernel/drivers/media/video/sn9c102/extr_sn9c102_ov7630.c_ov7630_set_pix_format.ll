; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_ov7630.c_ov7630_set_pix_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_ov7630.c_ov7630_set_pix_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_pix_format = type { i32 }

@V4L2_PIX_FMT_SBGGR8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_pix_format*)* @ov7630_set_pix_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7630_set_pix_format(%struct.sn9c102_device* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca %struct.sn9c102_device*, align 8
  %4 = alloca %struct.v4l2_pix_format*, align 8
  %5 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %3, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %7 = call i32 @sn9c102_get_bridge(%struct.sn9c102_device* %6)
  switch i32 %7, label %50 [
    i32 132, label %8
    i32 131, label %8
    i32 130, label %8
    i32 129, label %25
    i32 128, label %25
  ]

8:                                                ; preds = %2, %2, %2
  %9 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @V4L2_PIX_FMT_SBGGR8, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %16 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %15, i32 80, i32 25)
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %24

19:                                               ; preds = %8
  %20 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %21 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %20, i32 32, i32 25)
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %14
  br label %51

25:                                               ; preds = %2, %2
  %26 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @V4L2_PIX_FMT_SBGGR8, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %33 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %32, i32 229, i32 23)
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %37 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %36, i32 17, i32 4)
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %49

40:                                               ; preds = %25
  %41 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %42 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %41, i32 226, i32 23)
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %46 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %45, i32 17, i32 2)
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %40, %31
  br label %51

50:                                               ; preds = %2
  br label %51

51:                                               ; preds = %50, %49, %24
  %52 = load i32, i32* %5, align 4
  ret i32 %52
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
