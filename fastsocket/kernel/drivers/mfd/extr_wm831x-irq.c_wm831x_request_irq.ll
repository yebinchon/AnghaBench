; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-irq.c_wm831x_request_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-irq.c_wm831x_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }
%struct.wm831x = type { i32, i32 }

@WM831X_NUM_IRQS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@wm831x_irqs = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Already have handler for IRQ %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm831x_request_irq(%struct.wm831x* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm831x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ult i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @WM831X_NUM_IRQS, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %6
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %64

24:                                               ; preds = %17
  %25 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %26 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wm831x_irqs, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  %36 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %37 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %14, align 4
  br label %59

43:                                               ; preds = %24
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wm831x_irqs, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 %44, i64* %49, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wm831x_irqs, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i8* %50, i8** %55, align 8
  %56 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @__wm831x_enable_irq(%struct.wm831x* %56, i32 %57)
  br label %59

59:                                               ; preds = %43, %35
  %60 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %61 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %59, %21
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @__wm831x_enable_irq(%struct.wm831x*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
