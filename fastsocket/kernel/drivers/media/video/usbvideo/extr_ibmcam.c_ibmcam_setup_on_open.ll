; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_setup_on_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_setup_on_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*)* @ibmcam_setup_on_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmcam_setup_on_open(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.uvd*, %struct.uvd** %2, align 8
  %5 = call %struct.TYPE_2__* @IBMCAM_T(%struct.uvd* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  %10 = load %struct.uvd*, %struct.uvd** %2, align 8
  %11 = call %struct.TYPE_2__* @IBMCAM_T(%struct.uvd* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %21 [
    i32 131, label %14
    i32 130, label %17
    i32 129, label %20
    i32 128, label %20
  ]

14:                                               ; preds = %9
  %15 = load %struct.uvd*, %struct.uvd** %2, align 8
  %16 = call i32 @ibmcam_model1_setup(%struct.uvd* %15)
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %9
  %18 = load %struct.uvd*, %struct.uvd** %2, align 8
  %19 = call i32 @ibmcam_model2_setup(%struct.uvd* %18)
  store i32 %19, i32* %3, align 4
  br label %21

20:                                               ; preds = %9, %9
  br label %21

21:                                               ; preds = %9, %20, %17, %14
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load %struct.uvd*, %struct.uvd** %2, align 8
  %26 = call %struct.TYPE_2__* @IBMCAM_T(%struct.uvd* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %21, %1
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.TYPE_2__* @IBMCAM_T(%struct.uvd*) #1

declare dso_local i32 @ibmcam_model1_setup(%struct.uvd*) #1

declare dso_local i32 @ibmcam_model2_setup(%struct.uvd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
