; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_usb.c_cpia_usb_streamRead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_usb.c_cpia_usb_streamRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_cpia = type { %struct.framebuf*, i32, i32 }
%struct.framebuf = type { i64, i32, i32 }

@FRAME_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Frame already waiting!\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Something went wrong!\0A\00", align 1
@FRAME_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @cpia_usb_streamRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia_usb_streamRead(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_cpia*, align 8
  %9 = alloca %struct.framebuf*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.usb_cpia*
  store %struct.usb_cpia* %11, %struct.usb_cpia** %8, align 8
  %12 = load %struct.usb_cpia*, %struct.usb_cpia** %8, align 8
  %13 = icmp ne %struct.usb_cpia* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.usb_cpia*, %struct.usb_cpia** %8, align 8
  %16 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %3
  store i32 -1, i32* %4, align 4
  br label %69

20:                                               ; preds = %14
  %21 = load %struct.usb_cpia*, %struct.usb_cpia** %8, align 8
  %22 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %21, i32 0, i32 0
  %23 = load %struct.framebuf*, %struct.framebuf** %22, align 8
  %24 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FRAME_READY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.usb_cpia*, %struct.usb_cpia** %8, align 8
  %30 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %29, i32 0, i32 1
  %31 = call i32 @interruptible_sleep_on(i32* %30)
  br label %34

32:                                               ; preds = %20
  %33 = call i32 @DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  %35 = load %struct.usb_cpia*, %struct.usb_cpia** %8, align 8
  %36 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %35, i32 0, i32 0
  %37 = load %struct.framebuf*, %struct.framebuf** %36, align 8
  store %struct.framebuf* %37, %struct.framebuf** %9, align 8
  %38 = load %struct.framebuf*, %struct.framebuf** %9, align 8
  %39 = icmp ne %struct.framebuf* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %69

41:                                               ; preds = %34
  %42 = load %struct.framebuf*, %struct.framebuf** %9, align 8
  %43 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FRAME_READY, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load %struct.framebuf*, %struct.framebuf** %9, align 8
  %49 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %41
  %53 = call i32 @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %69

54:                                               ; preds = %47
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.framebuf*, %struct.framebuf** %9, align 8
  %57 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.framebuf*, %struct.framebuf** %9, align 8
  %60 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memcpy(i32* %55, i32 %58, i32 %61)
  %63 = load i64, i64* @FRAME_EMPTY, align 8
  %64 = load %struct.framebuf*, %struct.framebuf** %9, align 8
  %65 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.framebuf*, %struct.framebuf** %9, align 8
  %67 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %54, %52, %40, %19
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
