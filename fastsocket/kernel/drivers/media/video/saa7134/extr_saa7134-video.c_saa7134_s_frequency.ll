; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i64, i32 }
%struct.saa7134_fh = type { i32, i32, %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i64 0, align 8
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @saa7134_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.saa7134_fh*, align 8
  %9 = alloca %struct.saa7134_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.saa7134_fh*
  store %struct.saa7134_fh* %12, %struct.saa7134_fh** %8, align 8
  %13 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %14 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %13, i32 0, i32 2
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %14, align 8
  store %struct.saa7134_dev* %15, %struct.saa7134_dev** %9, align 8
  %16 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %17 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %16, i32 0, i32 2
  %18 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %19 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @v4l2_prio_check(i32* %17, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 0, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %81

26:                                               ; preds = %3
  %27 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 0, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %81

34:                                               ; preds = %26
  %35 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %36 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 0, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i64, i64* @V4L2_TUNER_ANALOG_TV, align 8
  %41 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %81

48:                                               ; preds = %39, %34
  %49 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %50 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 1, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %55 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %81

62:                                               ; preds = %53, %48
  %63 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %64 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %63, i32 0, i32 0
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %70 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %72 = load i32, i32* @tuner, align 4
  %73 = load i32, i32* @s_frequency, align 4
  %74 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %75 = call i32 @saa_call_all(%struct.saa7134_dev* %71, i32 %72, i32 %73, %struct.v4l2_frequency* %74)
  %76 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %77 = call i32 @saa7134_tvaudio_do_scan(%struct.saa7134_dev* %76)
  %78 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %79 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %62, %59, %45, %31, %24
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @v4l2_prio_check(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @saa_call_all(%struct.saa7134_dev*, i32, i32, %struct.v4l2_frequency*) #1

declare dso_local i32 @saa7134_tvaudio_do_scan(%struct.saa7134_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
