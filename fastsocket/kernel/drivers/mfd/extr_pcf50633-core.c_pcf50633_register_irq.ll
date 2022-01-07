; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-core.c_pcf50633_register_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-core.c_pcf50633_register_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { void (i32, i8*)*, i8* }

@PCF50633_NUM_IRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcf50633_register_irq(%struct.pcf50633* %0, i32 %1, void (i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcf50633*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  store %struct.pcf50633* %0, %struct.pcf50633** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (i32, i8*)* %2, void (i32, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @PCF50633_NUM_IRQ, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load void (i32, i8*)*, void (i32, i8*)** %8, align 8
  %18 = icmp ne void (i32, i8*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %12, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %59

22:                                               ; preds = %16
  %23 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %24 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load void (i32, i8*)*, void (i32, i8*)** %29, align 8
  %31 = call i64 @WARN_ON(void (i32, i8*)* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %59

36:                                               ; preds = %22
  %37 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %38 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load void (i32, i8*)*, void (i32, i8*)** %8, align 8
  %41 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %42 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store void (i32, i8*)* %40, void (i32, i8*)** %47, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %50 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i8* %48, i8** %55, align 8
  %56 = load %struct.pcf50633*, %struct.pcf50633** %6, align 8
  %57 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %36, %33, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @WARN_ON(void (i32, i8*)*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
