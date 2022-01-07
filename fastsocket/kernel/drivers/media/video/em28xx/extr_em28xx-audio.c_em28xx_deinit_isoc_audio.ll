; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-audio.c_em28xx_deinit_isoc_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-audio.c_em28xx_deinit_isoc_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32**, i32** }

@.str = private unnamed_addr constant [15 x i8] c"Stopping isoc\0A\00", align 1
@EM28XX_AUDIO_BUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_deinit_isoc_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_deinit_isoc_audio(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  %3 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %4 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %65, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @EM28XX_AUDIO_BUFS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %68

9:                                                ; preds = %5
  %10 = call i32 (...) @irqs_disabled()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %14 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @usb_kill_urb(i32* %20)
  br label %32

22:                                               ; preds = %9
  %23 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @usb_unlink_urb(i32* %30)
  br label %32

32:                                               ; preds = %22, %12
  %33 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %34 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @usb_free_urb(i32* %40)
  %42 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %43 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  store i32* null, i32** %48, align 8
  %49 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %50 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @kfree(i32* %56)
  %58 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %59 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %32
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %5

68:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_unlink_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
