; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_config_ccdc_image_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_config_ccdc_image_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 (i32)*, i32 (i32)*, i32 (i32)*, i32 (i32*)* }
%struct.vpfe_device = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@CCDC_FRMFMT_INTERLACED = common dso_local global i32 0, align 4
@ccdc_dev = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"couldn't set pix format in ccdc\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CCDC_BUFTYPE_FLD_INTERLEAVED = common dso_local global i32 0, align 4
@CCDC_FRMFMT_PROGRESSIVE = common dso_local global i32 0, align 4
@CCDC_BUFTYPE_FLD_SEPARATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_device*)* @vpfe_config_ccdc_image_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_config_ccdc_image_format(%struct.vpfe_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpfe_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vpfe_device* %0, %struct.vpfe_device** %3, align 8
  %6 = load i32, i32* @CCDC_FRMFMT_INTERLACED, align 4
  store i32 %6, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ccdc_dev, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64 (i32)*, i64 (i32)** %9, align 8
  %11 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %12 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 %10(i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %21 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %20, i32 0, i32 2
  %22 = call i32 @v4l2_err(i32* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %70

25:                                               ; preds = %1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ccdc_dev, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  %29 = load i32 (i32*)*, i32 (i32*)** %28, align 8
  %30 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %31 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %30, i32 0, i32 1
  %32 = call i32 %29(i32* %31)
  %33 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %34 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %55 [
    i32 130, label %39
    i32 129, label %46
    i32 128, label %48
  ]

39:                                               ; preds = %25
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ccdc_dev, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32 (i32)*, i32 (i32)** %42, align 8
  %44 = load i32, i32* @CCDC_BUFTYPE_FLD_INTERLEAVED, align 4
  %45 = call i32 %43(i32 %44)
  store i32 %45, i32* %5, align 4
  br label %58

46:                                               ; preds = %25
  %47 = load i32, i32* @CCDC_FRMFMT_PROGRESSIVE, align 4
  store i32 %47, i32* %4, align 4
  br label %58

48:                                               ; preds = %25
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ccdc_dev, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32 (i32)*, i32 (i32)** %51, align 8
  %53 = load i32, i32* @CCDC_BUFTYPE_FLD_SEPARATED, align 4
  %54 = call i32 %52(i32 %53)
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %25
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %70

58:                                               ; preds = %48, %46, %39
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ccdc_dev, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32 (i32)*, i32 (i32)** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 %65(i32 %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %58
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %55, %19
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @v4l2_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
