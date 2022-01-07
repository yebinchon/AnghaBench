; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_s_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.saa7134_fh = type { i32, %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32, i32 }
%struct.TYPE_2__ = type { i32* }

@SAA7134_INPUT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @saa7134_s_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa7134_fh*, align 8
  %9 = alloca %struct.saa7134_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.saa7134_fh*
  store %struct.saa7134_fh* %13, %struct.saa7134_fh** %8, align 8
  %14 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %15 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %14, i32 0, i32 1
  %16 = load %struct.saa7134_dev*, %struct.saa7134_dev** %15, align 8
  store %struct.saa7134_dev* %16, %struct.saa7134_dev** %9, align 8
  %17 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %18 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %17, i32 0, i32 1
  %19 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %20 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @v4l2_prio_check(i32* %18, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 0, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %55

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SAA7134_INPUT_MAX, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %55

34:                                               ; preds = %27
  %35 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32* @card_in(%struct.saa7134_dev* %35, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32* %37, i32** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* null, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %55

45:                                               ; preds = %34
  %46 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %47 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @video_mux(%struct.saa7134_dev* %49, i32 %50)
  %52 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %53 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %45, %42, %31, %25
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @v4l2_prio_check(i32*, i32) #1

declare dso_local i32* @card_in(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @video_mux(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
