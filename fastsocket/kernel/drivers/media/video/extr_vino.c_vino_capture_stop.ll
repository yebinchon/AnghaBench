; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_capture_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_capture_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vino_channel_settings = type { i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"vino_capture_stop():\0A\00", align 1
@vino_drvdata = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"vino_capture_stop(): vino_queue_get_incoming() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"vino_capture_stop(): vino_queue_get_outgoing() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vino_channel_settings*)* @vino_capture_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vino_capture_stop(%struct.vino_channel_settings* %0) #0 {
  %2 = alloca %struct.vino_channel_settings*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %10 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %14 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %20 = call i32 @vino_dma_stop(%struct.vino_channel_settings* %19)
  %21 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %22 = call i32 @vino_clear_interrupt(%struct.vino_channel_settings* %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %28 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %27, i32 0, i32 1
  %29 = call i64 @vino_queue_get_incoming(i32* %28, i32* %3)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = call i32 @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %71

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i32, i32* %3, align 4
  %36 = icmp ugt i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %39 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %38, i32 0, i32 1
  %40 = call i32 @vino_queue_transfer(i32* %39)
  %41 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %42 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %41, i32 0, i32 1
  %43 = call i64 @vino_queue_get_incoming(i32* %42, i32* %3)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = call i32 @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %71

47:                                               ; preds = %37
  br label %34

48:                                               ; preds = %34
  %49 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %50 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %49, i32 0, i32 1
  %51 = call i64 @vino_queue_get_outgoing(i32* %50, i32* %4)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %71

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %69, %55
  %57 = load i32, i32* %4, align 4
  %58 = icmp ugt i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %61 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %60, i32 0, i32 1
  %62 = call i32 @vino_queue_remove(i32* %61, i32* %5)
  %63 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %64 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %63, i32 0, i32 1
  %65 = call i64 @vino_queue_get_outgoing(i32* %64, i32* %4)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = call i32 @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %71

69:                                               ; preds = %59
  br label %56

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %67, %53, %45, %31
  %72 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %73 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %72, i32 0, i32 0
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vino_dma_stop(%struct.vino_channel_settings*) #1

declare dso_local i32 @vino_clear_interrupt(%struct.vino_channel_settings*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @vino_queue_get_incoming(i32*, i32*) #1

declare dso_local i32 @vino_queue_transfer(i32*) #1

declare dso_local i64 @vino_queue_get_outgoing(i32*, i32*) #1

declare dso_local i32 @vino_queue_remove(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
