; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_s2255_read_video_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_s2255_read_video_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2255_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.s2255_pipeinfo = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"callback read video \0A\00", align 1
@MAX_CHANNELS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"s2255: read callback failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"callback read video done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2255_dev*, %struct.s2255_pipeinfo*)* @s2255_read_video_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2255_read_video_callback(%struct.s2255_dev* %0, %struct.s2255_pipeinfo* %1) #0 {
  %3 = alloca %struct.s2255_dev*, align 8
  %4 = alloca %struct.s2255_pipeinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.s2255_dev* %0, %struct.s2255_dev** %3, align 8
  store %struct.s2255_pipeinfo* %1, %struct.s2255_pipeinfo** %4, align 8
  %6 = call i32 @dprintk(i32 50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %8 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MAX_CHANNELS, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %14 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %16 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %22 = load %struct.s2255_pipeinfo*, %struct.s2255_pipeinfo** %4, align 8
  %23 = call i32 @save_frame(%struct.s2255_dev* %21, %struct.s2255_pipeinfo* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  %29 = call i32 @dprintk(i32 50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %12
  ret void
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @save_frame(%struct.s2255_dev*, %struct.s2255_pipeinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
