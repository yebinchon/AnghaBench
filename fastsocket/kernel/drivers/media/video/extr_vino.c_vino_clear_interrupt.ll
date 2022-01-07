; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_clear_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_clear_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.sgi_vino_channel, %struct.sgi_vino_channel }
%struct.sgi_vino_channel = type { i32, i32, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vino_channel_settings = type { i64 }

@VINO_CHANNEL_A = common dso_local global i64 0, align 8
@vino = common dso_local global %struct.TYPE_6__* null, align 8
@vino_drvdata = common dso_local global %struct.TYPE_5__* null, align 8
@VINO_DESC_FETCH_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"channel %c clear interrupt condition\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vino_channel_settings*)* @vino_clear_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vino_clear_interrupt(%struct.vino_channel_settings* %0) #0 {
  %2 = alloca %struct.vino_channel_settings*, align 8
  %3 = alloca %struct.sgi_vino_channel*, align 8
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %2, align 8
  %4 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %5 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @VINO_CHANNEL_A, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vino, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vino, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi %struct.sgi_vino_channel* [ %11, %9 ], [ %14, %12 ]
  store %struct.sgi_vino_channel* %16, %struct.sgi_vino_channel** %3, align 8
  %17 = load %struct.sgi_vino_channel*, %struct.sgi_vino_channel** %3, align 8
  %18 = getelementptr inbounds %struct.sgi_vino_channel, %struct.sgi_vino_channel* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.sgi_vino_channel*, %struct.sgi_vino_channel** %3, align 8
  %20 = getelementptr inbounds %struct.sgi_vino_channel, %struct.sgi_vino_channel* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vino_drvdata, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sgi_vino_channel*, %struct.sgi_vino_channel** %3, align 8
  %26 = getelementptr inbounds %struct.sgi_vino_channel, %struct.sgi_vino_channel* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vino_drvdata, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sgi_vino_channel*, %struct.sgi_vino_channel** %3, align 8
  %32 = getelementptr inbounds %struct.sgi_vino_channel, %struct.sgi_vino_channel* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @VINO_DESC_FETCH_DELAY, align 4
  %34 = call i32 @udelay(i32 %33)
  %35 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %36 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VINO_CHANNEL_A, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 65, i32 66
  %42 = trunc i32 %41 to i8
  %43 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8 signext %42)
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dprintk(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
