; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_cx8800_unregister_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_cx8800_unregister_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8800_dev = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx8800_dev*)* @cx8800_unregister_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx8800_unregister_video(%struct.cx8800_dev* %0) #0 {
  %2 = alloca %struct.cx8800_dev*, align 8
  store %struct.cx8800_dev* %0, %struct.cx8800_dev** %2, align 8
  %3 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %4 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %9 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = call i64 @video_is_registered(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %15 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @video_unregister_device(i32* %16)
  br label %23

18:                                               ; preds = %7
  %19 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %20 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @video_device_release(i32* %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %25 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %28 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %33 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @video_is_registered(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %39 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @video_unregister_device(i32* %40)
  br label %47

42:                                               ; preds = %31
  %43 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %44 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @video_device_release(i32* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %49 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %47, %26
  %51 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %52 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %57 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @video_is_registered(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %63 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @video_unregister_device(i32* %64)
  br label %71

66:                                               ; preds = %55
  %67 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %68 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @video_device_release(i32* %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %73 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %71, %50
  ret void
}

declare dso_local i64 @video_is_registered(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @video_device_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
