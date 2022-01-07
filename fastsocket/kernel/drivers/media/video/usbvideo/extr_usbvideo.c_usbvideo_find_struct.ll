; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_find_struct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_find_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbvideo = type { i32, i32, %struct.uvd* }
%struct.uvd = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"No usbvideo handle?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbvideo*)* @usbvideo_find_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvideo_find_struct(%struct.usbvideo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbvideo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvd*, align 8
  store %struct.usbvideo* %0, %struct.usbvideo** %3, align 8
  store i32 -1, i32* %5, align 4
  %7 = load %struct.usbvideo*, %struct.usbvideo** %3, align 8
  %8 = icmp eq %struct.usbvideo* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %50

11:                                               ; preds = %1
  %12 = load %struct.usbvideo*, %struct.usbvideo** %3, align 8
  %13 = getelementptr inbounds %struct.usbvideo, %struct.usbvideo* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %42, %11
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.usbvideo*, %struct.usbvideo** %3, align 8
  %18 = getelementptr inbounds %struct.usbvideo, %struct.usbvideo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %15
  %22 = load %struct.usbvideo*, %struct.usbvideo** %3, align 8
  %23 = getelementptr inbounds %struct.usbvideo, %struct.usbvideo* %22, i32 0, i32 2
  %24 = load %struct.uvd*, %struct.uvd** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.uvd, %struct.uvd* %24, i64 %26
  store %struct.uvd* %27, %struct.uvd** %6, align 8
  %28 = load %struct.uvd*, %struct.uvd** %6, align 8
  %29 = getelementptr inbounds %struct.uvd, %struct.uvd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %21
  %33 = load %struct.uvd*, %struct.uvd** %6, align 8
  %34 = getelementptr inbounds %struct.uvd, %struct.uvd* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.uvd*, %struct.uvd** %6, align 8
  %36 = getelementptr inbounds %struct.uvd, %struct.uvd* %35, i32 0, i32 2
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.uvd*, %struct.uvd** %6, align 8
  %39 = getelementptr inbounds %struct.uvd, %struct.uvd* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %5, align 4
  br label %45

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %15

45:                                               ; preds = %32, %15
  %46 = load %struct.usbvideo*, %struct.usbvideo** %3, align 8
  %47 = getelementptr inbounds %struct.usbvideo, %struct.usbvideo* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
