; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_s_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.tw9910_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@OEN_TRI_SEL_ALL_OFF_r0 = common dso_local global i32 0, align 4
@OEN_TRI_SEL_ALL_OFF_r1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"un-supported revision\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OEN_TRI_SEL_ALL_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"norm select error\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%s %dx%d\0A\00", align 1
@OPFORM = common dso_local global i32 0, align 4
@OEN_TRI_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @tw9910_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw9910_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.tw9910_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = call %struct.tw9910_priv* @to_tw9910(%struct.i2c_client* %12)
  store %struct.tw9910_priv* %13, %struct.tw9910_priv** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %2
  %17 = load %struct.tw9910_priv*, %struct.tw9910_priv** %7, align 8
  %18 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %24 [
    i32 0, label %20
    i32 1, label %22
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @OEN_TRI_SEL_ALL_OFF_r0, align 4
  store i32 %21, i32* %8, align 4
  br label %30

22:                                               ; preds = %16
  %23 = load i32, i32* @OEN_TRI_SEL_ALL_OFF_r1, align 4
  store i32 %23, i32* %8, align 4
  br label %30

24:                                               ; preds = %16
  %25 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %76

30:                                               ; preds = %22, %20
  br label %62

31:                                               ; preds = %2
  %32 = load i32, i32* @OEN_TRI_SEL_ALL_ON, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.tw9910_priv*, %struct.tw9910_priv** %7, align 8
  %34 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %76

43:                                               ; preds = %31
  %44 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load %struct.tw9910_priv*, %struct.tw9910_priv** %7, align 8
  %47 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.tw9910_priv*, %struct.tw9910_priv** %7, align 8
  %52 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tw9910_priv*, %struct.tw9910_priv** %7, align 8
  %57 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %43, %30
  %63 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %64 = load i32, i32* @OPFORM, align 4
  %65 = load i32, i32* @OEN_TRI_SEL_MASK, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @tw9910_mask_set(%struct.i2c_client* %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %76

72:                                               ; preds = %62
  %73 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @tw9910_power(%struct.i2c_client* %73, i32 %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %70, %37, %24
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.tw9910_priv* @to_tw9910(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @tw9910_mask_set(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @tw9910_power(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
