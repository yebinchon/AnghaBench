; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_process_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32 }
%struct.framehdr = type { i32, i32 }

@marker = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*, i32*, i32)* @qcm_process_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcm_process_frame(%struct.uvd* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.uvd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.framehdr*, align 8
  store %struct.uvd* %0, %struct.uvd** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %53, %29, %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %61

13:                                               ; preds = %10
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.framehdr*
  store %struct.framehdr* %15, %struct.framehdr** %9, align 8
  %16 = load %struct.framehdr*, %struct.framehdr** %9, align 8
  %17 = getelementptr inbounds %struct.framehdr, %struct.framehdr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @be16_to_cpu(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 4
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  store i32* %23, i32** %5, align 8
  %24 = load %struct.framehdr*, %struct.framehdr** %9, align 8
  %25 = getelementptr inbounds %struct.framehdr, %struct.framehdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpu_to_be16(i32 32769)
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %13
  %30 = load %struct.uvd*, %struct.uvd** %4, align 8
  %31 = getelementptr inbounds %struct.uvd, %struct.uvd* %30, i32 0, i32 0
  %32 = load i32*, i32** @marker, align 8
  %33 = call i32 @RingQueue_Enqueue(i32* %31, i32* %32, i32 4)
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 4
  store i32 %35, i32* %8, align 4
  br label %10

36:                                               ; preds = %13
  %37 = load %struct.framehdr*, %struct.framehdr** %9, align 8
  %38 = getelementptr inbounds %struct.framehdr, %struct.framehdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cpu_to_be16(i32 65280)
  %41 = and i32 %39, %40
  %42 = call i32 @cpu_to_be16(i32 512)
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load %struct.uvd*, %struct.uvd** %4, align 8
  %46 = getelementptr inbounds %struct.uvd, %struct.uvd* %45, i32 0, i32 0
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @RingQueue_Enqueue(i32* %46, i32* %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %44, %36
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %5, align 8
  br label %10

61:                                               ; preds = %10
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @RingQueue_Enqueue(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
