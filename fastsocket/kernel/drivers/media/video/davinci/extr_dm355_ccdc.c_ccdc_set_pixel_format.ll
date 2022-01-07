; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_ccdc_set_pixel_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_ccdc_set_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ccdc_a_law }
%struct.ccdc_a_law = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ccdc_hw_params_raw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ccdc_if_type = common dso_local global i64 0, align 8
@VPFE_RAW_BAYER = common dso_local global i64 0, align 8
@CCDC_PIXFMT_RAW = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_SBGGR16 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i64 0, align 8
@CCDC_PIXORDER_YCBYCR = common dso_local global i32 0, align 4
@ccdc_hw_params_ycbcr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@V4L2_PIX_FMT_UYVY = common dso_local global i64 0, align 8
@CCDC_PIXORDER_CBYCRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ccdc_set_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_set_pixel_format(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.ccdc_a_law*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.ccdc_a_law* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_hw_params_raw, i32 0, i32 1, i32 0), %struct.ccdc_a_law** %4, align 8
  %5 = load i64, i64* @ccdc_if_type, align 8
  %6 = load i64, i64* @VPFE_RAW_BAYER, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load i32, i32* @CCDC_PIXFMT_RAW, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_hw_params_raw, i32 0, i32 0), align 4
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @V4L2_PIX_FMT_SBGGR8, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.ccdc_a_law*, %struct.ccdc_a_law** %4, align 8
  %15 = getelementptr inbounds %struct.ccdc_a_law, %struct.ccdc_a_law* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  br label %24

16:                                               ; preds = %8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @V4L2_PIX_FMT_SBGGR16, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %43

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %13
  br label %42

25:                                               ; preds = %1
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @CCDC_PIXORDER_YCBYCR, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ccdc_hw_params_ycbcr, i32 0, i32 0), align 4
  br label %41

31:                                               ; preds = %25
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @V4L2_PIX_FMT_UYVY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @CCDC_PIXORDER_CBYCRY, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ccdc_hw_params_ycbcr, i32 0, i32 0), align 4
  br label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %41, %24
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %37, %20
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
