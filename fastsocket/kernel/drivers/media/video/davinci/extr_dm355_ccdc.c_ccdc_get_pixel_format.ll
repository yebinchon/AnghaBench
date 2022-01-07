; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_ccdc_get_pixel_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_ccdc_get_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ccdc_a_law }
%struct.ccdc_a_law = type { i64 }
%struct.TYPE_5__ = type { i64 }

@ccdc_hw_params_raw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ccdc_if_type = common dso_local global i64 0, align 8
@VPFE_RAW_BAYER = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_SBGGR16 = common dso_local global i32 0, align 4
@ccdc_hw_params_ycbcr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@CCDC_PIXORDER_YCBYCR = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_UYVY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ccdc_get_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_get_pixel_format() #0 {
  %1 = alloca %struct.ccdc_a_law*, align 8
  %2 = alloca i32, align 4
  store %struct.ccdc_a_law* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_hw_params_raw, i32 0, i32 0, i32 0), %struct.ccdc_a_law** %1, align 8
  %3 = load i64, i64* @ccdc_if_type, align 8
  %4 = load i64, i64* @VPFE_RAW_BAYER, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %0
  %7 = load %struct.ccdc_a_law*, %struct.ccdc_a_law** %1, align 8
  %8 = getelementptr inbounds %struct.ccdc_a_law, %struct.ccdc_a_law* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load i32, i32* @V4L2_PIX_FMT_SBGGR8, align 4
  store i32 %12, i32* %2, align 4
  br label %15

13:                                               ; preds = %6
  %14 = load i32, i32* @V4L2_PIX_FMT_SBGGR16, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %13, %11
  br label %25

16:                                               ; preds = %0
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ccdc_hw_params_ycbcr, i32 0, i32 0), align 8
  %18 = load i64, i64* @CCDC_PIXORDER_YCBYCR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  store i32 %21, i32* %2, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @V4L2_PIX_FMT_UYVY, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
