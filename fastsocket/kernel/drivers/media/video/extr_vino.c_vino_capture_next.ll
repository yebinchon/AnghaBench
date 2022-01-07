; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_capture_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_capture_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_channel_settings = type { i32, i32, i32 }
%struct.vino_framebuffer = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"vino_capture_next():\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"vino_capture_next(): vino_queue_get_incoming() failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"vino_capture_next(): no buffers available\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"vino_capture_next(): vino_queue_peek() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vino_channel_settings*, i32)* @vino_capture_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_capture_next(%struct.vino_channel_settings* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vino_channel_settings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vino_framebuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %11 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %13 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %12, i32 0, i32 1
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %20 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %25 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %24, i32 0, i32 1
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  store i32 0, i32* %3, align 4
  br label %88

28:                                               ; preds = %18
  br label %40

29:                                               ; preds = %2
  %30 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %31 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %36 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %35, i32 0, i32 1
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  store i32 0, i32* %3, align 4
  br label %88

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %42 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %41, i32 0, i32 2
  %43 = call i32 @vino_queue_get_incoming(i32* %42, i32* %7)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = call i32 @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %80

50:                                               ; preds = %40
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %80

55:                                               ; preds = %50
  %56 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %57 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %56, i32 0, i32 2
  %58 = call %struct.vino_framebuffer* @vino_queue_peek(i32* %57, i32* %8)
  store %struct.vino_framebuffer* %58, %struct.vino_framebuffer** %6, align 8
  %59 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %6, align 8
  %60 = icmp eq %struct.vino_framebuffer* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = call i32 @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %9, align 4
  br label %80

65:                                               ; preds = %55
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %70 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %73 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %72, i32 0, i32 1
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %77 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %6, align 8
  %78 = call i32 @vino_capture(%struct.vino_channel_settings* %76, %struct.vino_framebuffer* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %88

80:                                               ; preds = %61, %53, %46
  %81 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %82 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  %83 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %84 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %83, i32 0, i32 1
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %80, %71, %34, %23
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vino_queue_get_incoming(i32*, i32*) #1

declare dso_local %struct.vino_framebuffer* @vino_queue_peek(i32*, i32*) #1

declare dso_local i32 @vino_capture(%struct.vino_channel_settings*, %struct.vino_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
