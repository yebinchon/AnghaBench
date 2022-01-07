; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_agc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_agc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32 }

@SET_LUM_CTL = common dso_local global i32 0, align 4
@AGC_MODE_FORMATTER = common dso_local global i32 0, align 4
@PRESET_AGC_FORMATTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_set_agc(%struct.pwc_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8 0, i8* %8, align 1
  br label %14

13:                                               ; preds = %3
  store i8 -1, i8* %8, align 1
  br label %14

14:                                               ; preds = %13, %12
  %15 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %16 = load i32, i32* @SET_LUM_CTL, align 4
  %17 = load i32, i32* @AGC_MODE_FORMATTER, align 4
  %18 = call i32 @send_control_msg(%struct.pwc_device* %15, i32 %16, i32 %17, i8* %8, i32 1)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 65535
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 65535, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, 10
  %35 = and i32 %34, 63
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %8, align 1
  %37 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %38 = load i32, i32* @SET_LUM_CTL, align 4
  %39 = load i32, i32* @PRESET_AGC_FORMATTER, align 4
  %40 = call i32 @send_control_msg(%struct.pwc_device* %37, i32 %38, i32 %39, i8* %8, i32 1)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %32, %21, %14
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @send_control_msg(%struct.pwc_device*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
