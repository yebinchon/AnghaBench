; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_video_irq_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_video_irq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32, %struct.saa7146_vv* }
%struct.saa7146_vv = type { %struct.saa7146_dmaqueue }
%struct.saa7146_dmaqueue = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"called.\0A\00", align 1
@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, i64)* @video_irq_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @video_irq_done(%struct.saa7146_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.saa7146_vv*, align 8
  %6 = alloca %struct.saa7146_dmaqueue*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %8 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %7, i32 0, i32 1
  %9 = load %struct.saa7146_vv*, %struct.saa7146_vv** %8, align 8
  store %struct.saa7146_vv* %9, %struct.saa7146_vv** %5, align 8
  %10 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %11 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %10, i32 0, i32 0
  store %struct.saa7146_dmaqueue* %11, %struct.saa7146_dmaqueue** %6, align 8
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %13 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = call i32 @DEB_CAP(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %6, align 8
  %17 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* null, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %22 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %6, align 8
  %23 = load i32, i32* @VIDEOBUF_DONE, align 4
  %24 = call i32 @saa7146_buffer_finish(%struct.saa7146_dev* %21, %struct.saa7146_dmaqueue* %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %27 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %6, align 8
  %28 = call i32 @saa7146_buffer_next(%struct.saa7146_dev* %26, %struct.saa7146_dmaqueue* %27, i32 0)
  %29 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %30 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @DEB_CAP(i8*) #1

declare dso_local i32 @saa7146_buffer_finish(%struct.saa7146_dev*, %struct.saa7146_dmaqueue*, i32) #1

declare dso_local i32 @saa7146_buffer_next(%struct.saa7146_dev*, %struct.saa7146_dmaqueue*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
