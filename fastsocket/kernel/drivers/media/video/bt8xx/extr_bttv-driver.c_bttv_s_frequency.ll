; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i64, i32 }
%struct.bttv_fh = type { i32, %struct.bttv* }
%struct.bttv = type { i32, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@V4L2_TUNER_ANALOG_TV = common dso_local global i64 0, align 8
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @bttv_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.bttv_fh*, align 8
  %9 = alloca %struct.bttv*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.bttv_fh*
  store %struct.bttv_fh* %12, %struct.bttv_fh** %8, align 8
  %13 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %14 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %13, i32 0, i32 1
  %15 = load %struct.bttv*, %struct.bttv** %14, align 8
  store %struct.bttv* %15, %struct.bttv** %9, align 8
  %16 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %86

26:                                               ; preds = %3
  %27 = load %struct.bttv*, %struct.bttv** %9, align 8
  %28 = getelementptr inbounds %struct.bttv, %struct.bttv* %27, i32 0, i32 3
  %29 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %30 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @v4l2_prio_check(i32* %28, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %85

37:                                               ; preds = %26
  %38 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.bttv*, %struct.bttv** %9, align 8
  %42 = getelementptr inbounds %struct.bttv, %struct.bttv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  br label %49

47:                                               ; preds = %37
  %48 = load i64, i64* @V4L2_TUNER_ANALOG_TV, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  %51 = icmp ne i64 %40, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %85

58:                                               ; preds = %49
  %59 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bttv*, %struct.bttv** %9, align 8
  %63 = getelementptr inbounds %struct.bttv, %struct.bttv* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.bttv*, %struct.bttv** %9, align 8
  %65 = load i32, i32* @tuner, align 4
  %66 = load i32, i32* @s_frequency, align 4
  %67 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %68 = call i32 @bttv_call_all(%struct.bttv* %64, i32 %65, i32 %66, %struct.v4l2_frequency* %67)
  %69 = load %struct.bttv*, %struct.bttv** %9, align 8
  %70 = getelementptr inbounds %struct.bttv, %struct.bttv* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %58
  %74 = load %struct.bttv*, %struct.bttv** %9, align 8
  %75 = getelementptr inbounds %struct.bttv, %struct.bttv* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.bttv*, %struct.bttv** %9, align 8
  %80 = load %struct.bttv*, %struct.bttv** %9, align 8
  %81 = getelementptr inbounds %struct.bttv, %struct.bttv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @tea5757_set_freq(%struct.bttv* %79, i32 %82)
  br label %84

84:                                               ; preds = %78, %73, %58
  br label %85

85:                                               ; preds = %84, %55, %36
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %23
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @v4l2_prio_check(i32*, i32) #1

declare dso_local i32 @bttv_call_all(%struct.bttv*, i32, i32, %struct.v4l2_frequency*) #1

declare dso_local i32 @tea5757_set_freq(%struct.bttv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
