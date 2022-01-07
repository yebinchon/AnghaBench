; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_tuner_g_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_tuner_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_frequency = type { i64, i32 }
%struct.tuner = type { i64, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dvb_tuner_ops }
%struct.dvb_tuner_ops = type { i32 (%struct.TYPE_4__*, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)* @tuner_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_g_frequency(%struct.v4l2_subdev* %0, %struct.v4l2_frequency* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_frequency*, align 8
  %6 = alloca %struct.tuner*, align 8
  %7 = alloca %struct.dvb_tuner_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_frequency* %1, %struct.v4l2_frequency** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.tuner* @to_tuner(%struct.v4l2_subdev* %9)
  store %struct.tuner* %10, %struct.tuner** %6, align 8
  %11 = load %struct.tuner*, %struct.tuner** %6, align 8
  %12 = getelementptr inbounds %struct.tuner, %struct.tuner* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.dvb_tuner_ops* %14, %struct.dvb_tuner_ops** %7, align 8
  %15 = load %struct.tuner*, %struct.tuner** %6, align 8
  %16 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @check_mode(%struct.tuner* %15, i64 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

24:                                               ; preds = %2
  %25 = load %struct.tuner*, %struct.tuner** %6, align 8
  %26 = getelementptr inbounds %struct.tuner, %struct.tuner* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %7, align 8
  %31 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %31, align 8
  %33 = icmp ne i32 (%struct.TYPE_4__*, i32*)* %32, null
  br i1 %33, label %34, label %62

34:                                               ; preds = %24
  %35 = load %struct.tuner*, %struct.tuner** %6, align 8
  %36 = getelementptr inbounds %struct.tuner, %struct.tuner* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %62, label %39

39:                                               ; preds = %34
  %40 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %7, align 8
  %41 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %41, align 8
  %43 = load %struct.tuner*, %struct.tuner** %6, align 8
  %44 = getelementptr inbounds %struct.tuner, %struct.tuner* %43, i32 0, i32 3
  %45 = call i32 %42(%struct.TYPE_4__* %44, i32* %8)
  %46 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %47 = load %struct.tuner*, %struct.tuner** %6, align 8
  %48 = getelementptr inbounds %struct.tuner, %struct.tuner* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 %52, 2
  %54 = call i32 @DIV_ROUND_CLOSEST(i32 %53, i32 125)
  br label %58

55:                                               ; preds = %39
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @DIV_ROUND_CLOSEST(i32 %56, i32 62500)
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i32 [ %54, %51 ], [ %57, %55 ]
  %60 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %80

62:                                               ; preds = %34, %24
  %63 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %64 = load %struct.tuner*, %struct.tuner** %6, align 8
  %65 = getelementptr inbounds %struct.tuner, %struct.tuner* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.tuner*, %struct.tuner** %6, align 8
  %70 = getelementptr inbounds %struct.tuner, %struct.tuner* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  br label %76

72:                                               ; preds = %62
  %73 = load %struct.tuner*, %struct.tuner** %6, align 8
  %74 = getelementptr inbounds %struct.tuner, %struct.tuner* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i32 [ %71, %68 ], [ %75, %72 ]
  %78 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %58
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %23
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.tuner* @to_tuner(%struct.v4l2_subdev*) #1

declare dso_local i32 @check_mode(%struct.tuner*, i64) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
