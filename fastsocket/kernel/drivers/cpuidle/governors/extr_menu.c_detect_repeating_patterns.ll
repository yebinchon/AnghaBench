; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/governors/extr_menu.c_detect_repeating_patterns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/governors/extr_menu.c_detect_repeating_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_device = type { i32*, i32, i32 }

@INTERVALS = common dso_local global i32 0, align 4
@STDDEV_THRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu_device*)* @detect_repeating_patterns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_repeating_patterns(%struct.menu_device* %0) #0 {
  %2 = alloca %struct.menu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.menu_device* %0, %struct.menu_device** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @INTERVALS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load %struct.menu_device*, %struct.menu_device** %2, align 8
  %12 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %6

23:                                               ; preds = %6
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @INTERVALS, align 4
  %26 = sdiv i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.menu_device*, %struct.menu_device** %2, align 8
  %29 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %77

33:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %60, %33
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @INTERVALS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load %struct.menu_device*, %struct.menu_device** %2, align 8
  %40 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load %struct.menu_device*, %struct.menu_device** %2, align 8
  %49 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %54, %55
  %57 = mul nsw i32 %47, %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %38
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %34

63:                                               ; preds = %34
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @INTERVALS, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @STDDEV_THRESH, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.menu_device*, %struct.menu_device** %2, align 8
  %76 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %32, %73, %69, %63
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
