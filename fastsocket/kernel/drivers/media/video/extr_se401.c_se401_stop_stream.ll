; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_stop_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_stop_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_se401 = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32**, i64, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@SE401_REQ_STOP_CONTINUOUS_CAPTURE = common dso_local global i32 0, align 4
@SE401_REQ_LED_CONTROL = common dso_local global i32 0, align 4
@SE401_REQ_CAMERA_POWER = common dso_local global i32 0, align 4
@SE401_NUMSBUF = common dso_local global i32 0, align 4
@SE401_NUMSCRATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_se401*)* @se401_stop_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @se401_stop_stream(%struct.usb_se401* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_se401*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_se401* %0, %struct.usb_se401** %3, align 8
  %5 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %6 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %11 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  store i32 1, i32* %2, align 4
  br label %102

15:                                               ; preds = %9
  %16 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %17 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %19 = load i32, i32* @SE401_REQ_STOP_CONTINUOUS_CAPTURE, align 4
  %20 = call i32 @se401_sndctrl(i32 1, %struct.usb_se401* %18, i32 %19, i32 0, i32* null, i32 0)
  %21 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %22 = load i32, i32* @SE401_REQ_LED_CONTROL, align 4
  %23 = call i32 @se401_sndctrl(i32 1, %struct.usb_se401* %21, i32 %22, i32 0, i32* null, i32 0)
  %24 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %25 = load i32, i32* @SE401_REQ_CAMERA_POWER, align 4
  %26 = call i32 @se401_sndctrl(i32 1, %struct.usb_se401* %24, i32 %25, i32 0, i32* null, i32 0)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %73, %15
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SE401_NUMSBUF, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %27
  %32 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %33 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %32, i32 0, i32 2
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %72

40:                                               ; preds = %31
  %41 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %42 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %41, i32 0, i32 2
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @usb_kill_urb(i32* %47)
  %49 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %50 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %49, i32 0, i32 2
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @usb_free_urb(i32* %55)
  %57 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %58 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %57, i32 0, i32 2
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* null, i32** %62, align 8
  %63 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %64 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @kfree(i32* %70)
  br label %72

72:                                               ; preds = %40, %31
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %27

76:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %98, %76
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @SE401_NUMSCRATCH, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %83 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @kfree(i32* %89)
  %91 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %92 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %81
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %77

101:                                              ; preds = %77
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %14
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @se401_sndctrl(i32, %struct.usb_se401*, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
