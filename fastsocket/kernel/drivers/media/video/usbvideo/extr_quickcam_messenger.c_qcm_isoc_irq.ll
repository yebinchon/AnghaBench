; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_isoc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_isoc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.uvd* }
%struct.uvd = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @qcm_isoc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcm_isoc_irq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvd*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 1
  %7 = load %struct.uvd*, %struct.uvd** %6, align 8
  store %struct.uvd* %7, %struct.uvd** %4, align 8
  %8 = load %struct.uvd*, %struct.uvd** %4, align 8
  %9 = call i32 @CAMERA_IS_OPERATIONAL(%struct.uvd* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.uvd*, %struct.uvd** %4, align 8
  %14 = getelementptr inbounds %struct.uvd, %struct.uvd* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %55

18:                                               ; preds = %12
  %19 = load %struct.uvd*, %struct.uvd** %4, align 8
  %20 = getelementptr inbounds %struct.uvd, %struct.uvd* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.urb*, %struct.urb** %2, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = load %struct.uvd*, %struct.uvd** %4, align 8
  %30 = load %struct.urb*, %struct.urb** %2, align 8
  %31 = call i32 @resubmit_urb(%struct.uvd* %29, %struct.urb* %30)
  br label %55

32:                                               ; preds = %18
  %33 = load %struct.uvd*, %struct.uvd** %4, align 8
  %34 = load %struct.urb*, %struct.urb** %2, align 8
  %35 = call i32 @qcm_compress_iso(%struct.uvd* %33, %struct.urb* %34)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.uvd*, %struct.uvd** %4, align 8
  %37 = load %struct.urb*, %struct.urb** %2, align 8
  %38 = call i32 @resubmit_urb(%struct.uvd* %36, %struct.urb* %37)
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.uvd*, %struct.uvd** %4, align 8
  %41 = getelementptr inbounds %struct.uvd, %struct.uvd* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.uvd*, %struct.uvd** %4, align 8
  %45 = getelementptr inbounds %struct.uvd, %struct.uvd* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %32
  %52 = load %struct.uvd*, %struct.uvd** %4, align 8
  %53 = getelementptr inbounds %struct.uvd, %struct.uvd* %52, i32 0, i32 0
  %54 = call i32 @RingQueue_WakeUpInterruptible(i32* %53)
  br label %55

55:                                               ; preds = %11, %17, %28, %51, %32
  ret void
}

declare dso_local i32 @CAMERA_IS_OPERATIONAL(%struct.uvd*) #1

declare dso_local i32 @resubmit_urb(%struct.uvd*, %struct.urb*) #1

declare dso_local i32 @qcm_compress_iso(%struct.uvd*, %struct.urb*) #1

declare dso_local i32 @RingQueue_WakeUpInterruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
