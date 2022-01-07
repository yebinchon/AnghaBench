; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_s_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64 }
%struct.bttv_fh = type { i32, %struct.bttv* }
%struct.bttv = type { i64, i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TUNER_ABSENT = common dso_local global i64 0, align 8
@tuner = common dso_local global i32 0, align 4
@s_tuner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @bttv_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_s_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.bttv_fh*, align 8
  %9 = alloca %struct.bttv*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.bttv_fh*
  store %struct.bttv_fh* %12, %struct.bttv_fh** %8, align 8
  %13 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %14 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %13, i32 0, i32 1
  %15 = load %struct.bttv*, %struct.bttv** %14, align 8
  store %struct.bttv* %15, %struct.bttv** %9, align 8
  %16 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 0, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %68

26:                                               ; preds = %3
  %27 = load %struct.bttv*, %struct.bttv** %9, align 8
  %28 = getelementptr inbounds %struct.bttv, %struct.bttv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TUNER_ABSENT, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %67

38:                                               ; preds = %26
  %39 = load %struct.bttv*, %struct.bttv** %9, align 8
  %40 = getelementptr inbounds %struct.bttv, %struct.bttv* %39, i32 0, i32 2
  %41 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %42 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @v4l2_prio_check(i32* %40, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %67

49:                                               ; preds = %38
  %50 = load %struct.bttv*, %struct.bttv** %9, align 8
  %51 = load i32, i32* @tuner, align 4
  %52 = load i32, i32* @s_tuner, align 4
  %53 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %54 = call i32 @bttv_call_all(%struct.bttv* %50, i32 %51, i32 %52, %struct.v4l2_tuner* %53)
  %55 = load %struct.bttv*, %struct.bttv** %9, align 8
  %56 = getelementptr inbounds %struct.bttv, %struct.bttv* %55, i32 0, i32 1
  %57 = load i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)*, i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)** %56, align 8
  %58 = icmp ne i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.bttv*, %struct.bttv** %9, align 8
  %61 = getelementptr inbounds %struct.bttv, %struct.bttv* %60, i32 0, i32 1
  %62 = load i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)*, i32 (%struct.bttv*, %struct.v4l2_tuner*, i32)** %61, align 8
  %63 = load %struct.bttv*, %struct.bttv** %9, align 8
  %64 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %65 = call i32 %62(%struct.bttv* %63, %struct.v4l2_tuner* %64, i32 1)
  br label %66

66:                                               ; preds = %59, %49
  br label %67

67:                                               ; preds = %66, %48, %35
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %23
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @v4l2_prio_check(i32*, i32) #1

declare dso_local i32 @bttv_call_all(%struct.bttv*, i32, i32, %struct.v4l2_tuner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
