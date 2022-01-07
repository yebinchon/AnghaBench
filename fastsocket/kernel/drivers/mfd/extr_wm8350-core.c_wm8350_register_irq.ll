; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_register_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_register_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { void (%struct.wm8350*, i32, i8*)*, i8* }

@WM8350_NUM_IRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8350_register_irq(%struct.wm8350* %0, i32 %1, void (%struct.wm8350*, i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (%struct.wm8350*, i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  store %struct.wm8350* %0, %struct.wm8350** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (%struct.wm8350*, i32, i8*)* %2, void (%struct.wm8350*, i32, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @WM8350_NUM_IRQ, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load void (%struct.wm8350*, i32, i8*)*, void (%struct.wm8350*, i32, i8*)** %8, align 8
  %18 = icmp ne void (%struct.wm8350*, i32, i8*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %12, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %58

22:                                               ; preds = %16
  %23 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %24 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load void (%struct.wm8350*, i32, i8*)*, void (%struct.wm8350*, i32, i8*)** %29, align 8
  %31 = icmp ne void (%struct.wm8350*, i32, i8*)* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %58

35:                                               ; preds = %22
  %36 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %37 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load void (%struct.wm8350*, i32, i8*)*, void (%struct.wm8350*, i32, i8*)** %8, align 8
  %40 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %41 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store void (%struct.wm8350*, i32, i8*)* %39, void (%struct.wm8350*, i32, i8*)** %46, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %49 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i8* %47, i8** %54, align 8
  %55 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %56 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %35, %32, %19
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
