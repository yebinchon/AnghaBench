; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_saturation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_saturation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SATURATION_MODE_FORMATTER2 = common dso_local global i32 0, align 4
@SATURATION_MODE_FORMATTER1 = common dso_local global i32 0, align 4
@SET_CHROM_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_set_saturation(%struct.pwc_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %9 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 675
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %37

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, -100
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -100, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 100
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 100, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %25 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 730
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @SATURATION_MODE_FORMATTER2, align 4
  store i32 %29, i32* %7, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @SATURATION_MODE_FORMATTER1, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %34 = load i32, i32* @SET_CHROM_CTL, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @send_control_msg(%struct.pwc_device* %33, i32 %34, i32 %35, i8* %6, i32 1)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @send_control_msg(%struct.pwc_device*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
