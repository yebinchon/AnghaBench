; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_contour.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_contour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32 }

@SET_LUM_CTL = common dso_local global i32 0, align 4
@AUTO_CONTOUR_FORMATTER = common dso_local global i32 0, align 4
@PRESET_CONTOUR_FORMATTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_set_contour(%struct.pwc_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8 -1, i8* %6, align 1
  br label %12

11:                                               ; preds = %2
  store i8 0, i8* %6, align 1
  br label %12

12:                                               ; preds = %11, %10
  %13 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %14 = load i32, i32* @SET_LUM_CTL, align 4
  %15 = load i32, i32* @AUTO_CONTOUR_FORMATTER, align 4
  %16 = call i32 @send_control_msg(%struct.pwc_device* %13, i32 %14, i32 %15, i8* %6, i32 1)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %42

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 65535
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 65535, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 10
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %6, align 1
  %33 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %34 = load i32, i32* @SET_LUM_CTL, align 4
  %35 = load i32, i32* @PRESET_CONTOUR_FORMATTER, align 4
  %36 = call i32 @send_control_msg(%struct.pwc_device* %33, i32 %34, i32 %35, i8* %6, i32 1)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %24, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @send_control_msg(%struct.pwc_device*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
