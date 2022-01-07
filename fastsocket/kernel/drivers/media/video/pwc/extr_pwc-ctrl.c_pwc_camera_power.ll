; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_camera_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_camera_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i32 }

@SET_STATUS_CTL = common dso_local global i32 0, align 4
@SET_POWER_SAVE_MODE_FORMATTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_camera_power(%struct.pwc_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.pwc_device* %0, %struct.pwc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %8 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 675
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %13 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 730
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %18 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %32

22:                                               ; preds = %16, %11
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i8 0, i8* %6, align 1
  br label %27

26:                                               ; preds = %22
  store i8 -1, i8* %6, align 1
  br label %27

27:                                               ; preds = %26, %25
  %28 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %29 = load i32, i32* @SET_STATUS_CTL, align 4
  %30 = load i32, i32* @SET_POWER_SAVE_MODE_FORMATTER, align 4
  %31 = call i32 @send_control_msg(%struct.pwc_device* %28, i32 %29, i32 %30, i8* %6, i32 1)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %21
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @send_control_msg(%struct.pwc_device*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
