; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video-mode.c_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video-mode.c_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VIDEO_CURRENT_MODE = common dso_local global i32 0, align 4
@NORMAL_VGA = common dso_local global i32 0, align 4
@VIDEO_80x25 = common dso_local global i32 0, align 4
@EXTENDED_VGA = common dso_local global i32 0, align 4
@VIDEO_8POINT = common dso_local global i32 0, align 4
@VIDEO_RECALC = common dso_local global i32 0, align 4
@boot_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @VIDEO_CURRENT_MODE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @NORMAL_VGA, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @VIDEO_80x25, align 4
  store i32 %15, i32* %3, align 4
  br label %23

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @EXTENDED_VGA, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @VIDEO_8POINT, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %16
  br label %23

23:                                               ; preds = %22, %14
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @raw_set_mode(i32 %25, i32* %5)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %40

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @VIDEO_RECALC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (...) @vga_recalc_vertical()
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %29, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @raw_set_mode(i32, i32*) #1

declare dso_local i32 @vga_recalc_vertical(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
