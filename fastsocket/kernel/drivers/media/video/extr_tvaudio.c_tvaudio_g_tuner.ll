; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tvaudio_g_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tvaudio_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32, i32, i32 }
%struct.CHIPSTATE = type { i32, i64, %struct.CHIPDESC* }
%struct.CHIPDESC = type { i32 (%struct.CHIPSTATE*)* }

@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @tvaudio_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvaudio_g_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca %struct.CHIPSTATE*, align 8
  %7 = alloca %struct.CHIPDESC*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev* %9)
  store %struct.CHIPSTATE* %10, %struct.CHIPSTATE** %6, align 8
  %11 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %12 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %11, i32 0, i32 2
  %13 = load %struct.CHIPDESC*, %struct.CHIPDESC** %12, align 8
  store %struct.CHIPDESC* %13, %struct.CHIPDESC** %7, align 8
  %14 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %16 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %15, i32 0, i32 0
  %17 = load i32 (%struct.CHIPSTATE*)*, i32 (%struct.CHIPSTATE*)** %16, align 8
  %18 = icmp ne i32 (%struct.CHIPSTATE*)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

20:                                               ; preds = %2
  %21 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %22 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %79

26:                                               ; preds = %20
  %27 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %28 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %35 = load i32, i32* @V4L2_TUNER_CAP_LANG1, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @V4L2_TUNER_CAP_LANG2, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.CHIPDESC*, %struct.CHIPDESC** %7, align 8
  %42 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %41, i32 0, i32 0
  %43 = load i32 (%struct.CHIPSTATE*)*, i32 (%struct.CHIPSTATE*)** %42, align 8
  %44 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %6, align 8
  %45 = call i32 %43(%struct.CHIPSTATE* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %26
  %51 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %52 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %26
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %63 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @V4L2_TUNER_MODE_LANG1, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %74 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %77 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %72, %67
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %25, %19
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
