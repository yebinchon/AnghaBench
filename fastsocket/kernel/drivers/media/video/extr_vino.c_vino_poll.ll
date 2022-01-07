; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vino_channel_settings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"poll():\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"poll(): vino_queue_get_outgoing() failed\0A\00", align 1
@POLLERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"poll(): data %savailable\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @vino_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vino_channel_settings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %8)
  store %struct.vino_channel_settings* %9, %struct.vino_channel_settings** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %12 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %11, i32 0, i32 0
  %13 = call i64 @vino_queue_get_outgoing(%struct.TYPE_2__* %12, i32* %6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @POLLERR, align 4
  store i32 %17, i32* %7, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ugt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %37

22:                                               ; preds = %18
  %23 = load %struct.file*, %struct.file** %3, align 8
  %24 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %25 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @poll_wait(%struct.file* %23, i32* %26, i32* %27)
  %29 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %30 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %29, i32 0, i32 0
  %31 = call i64 @vino_queue_get_outgoing(%struct.TYPE_2__* %30, i32* %6)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @POLLERR, align 4
  store i32 %35, i32* %7, align 4
  br label %50

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* %6, align 4
  %39 = icmp ugt i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %42 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ugt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @POLLIN, align 4
  %47 = load i32, i32* @POLLRDNORM, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %37
  br label %50

50:                                               ; preds = %49, %33, %15
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @vino_queue_get_outgoing(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
