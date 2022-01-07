; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_leds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32 }

@SET_STATUS_CTL = common dso_local global i32 0, align 4
@LED_FORMATTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_set_leds(%struct.pwc_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8], align 1
  store %struct.pwc_device* %0, %struct.pwc_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %10 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 730
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = sdiv i32 %15, 100
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %17, 100
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %14
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 255
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 255, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 255
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 255, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %6, align 4
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %36, i8* %37, align 1
  %38 = load i32, i32* %7, align 4
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %39, i8* %40, align 1
  %41 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %42 = load i32, i32* @SET_STATUS_CTL, align 4
  %43 = load i32, i32* @LED_FORMATTER, align 4
  %44 = bitcast [2 x i8]* %8 to i8**
  %45 = call i32 @send_control_msg(%struct.pwc_device* %41, i32 %42, i32 %43, i8** %44, i32 2)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %34, %13
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @send_control_msg(%struct.pwc_device*, i32, i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
