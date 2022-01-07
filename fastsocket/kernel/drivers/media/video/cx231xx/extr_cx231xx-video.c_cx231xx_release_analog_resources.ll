; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_release_analog_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_release_analog_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i64, i32*, i32*, i32* }

@.str = private unnamed_addr constant [29 x i8] c"V4L2 device %s deregistered\0A\00", align 1
@CX231XX_BOARD_CNXT_VIDEO_GRABBER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_release_analog_resources(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  %3 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %4 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %9 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = call i64 @video_is_registered(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %15 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @video_unregister_device(i32* %16)
  br label %23

18:                                               ; preds = %7
  %19 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %20 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @video_device_release(i32* %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  %32 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @video_device_node_name(i32* %34)
  %36 = call i32 @cx231xx_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @video_is_registered(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %44 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @video_unregister_device(i32* %45)
  br label %52

47:                                               ; preds = %31
  %48 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %49 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @video_device_release(i32* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %54 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %52, %26
  %56 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %93

60:                                               ; preds = %55
  %61 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %62 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @video_device_node_name(i32* %63)
  %65 = call i32 @cx231xx_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %67 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CX231XX_BOARD_CNXT_VIDEO_GRABBER, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %73 = call i32 @cx231xx_417_unregister(%struct.cx231xx* %72)
  br label %74

74:                                               ; preds = %71, %60
  %75 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %76 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @video_is_registered(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %82 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @video_unregister_device(i32* %83)
  br label %90

85:                                               ; preds = %74
  %86 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %87 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @video_device_release(i32* %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %92 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %91, i32 0, i32 1
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %90, %55
  ret void
}

declare dso_local i64 @video_is_registered(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @video_device_release(i32*) #1

declare dso_local i32 @cx231xx_info(i8*, i32) #1

declare dso_local i32 @video_device_node_name(i32*) #1

declare dso_local i32 @cx231xx_417_unregister(%struct.cx231xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
