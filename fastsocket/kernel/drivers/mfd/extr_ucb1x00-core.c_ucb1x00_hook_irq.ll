; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_hook_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_hook_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00 = type { i32, %struct.ucb1x00_irq* }
%struct.ucb1x00_irq = type { void (i32, i8*)*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucb1x00_hook_irq(%struct.ucb1x00* %0, i32 %1, void (i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.ucb1x00*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (i32, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ucb1x00_irq*, align 8
  %10 = alloca i32, align 4
  store %struct.ucb1x00* %0, %struct.ucb1x00** %5, align 8
  store i32 %1, i32* %6, align 4
  store void (i32, i8*)* %2, void (i32, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %13, 16
  br i1 %14, label %15, label %42

15:                                               ; preds = %4
  %16 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %17 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %16, i32 0, i32 1
  %18 = load %struct.ucb1x00_irq*, %struct.ucb1x00_irq** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ucb1x00_irq, %struct.ucb1x00_irq* %18, i64 %20
  store %struct.ucb1x00_irq* %21, %struct.ucb1x00_irq** %9, align 8
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %25 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load %struct.ucb1x00_irq*, %struct.ucb1x00_irq** %9, align 8
  %28 = getelementptr inbounds %struct.ucb1x00_irq, %struct.ucb1x00_irq* %27, i32 0, i32 0
  %29 = load void (i32, i8*)*, void (i32, i8*)** %28, align 8
  %30 = icmp eq void (i32, i8*)* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %15
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.ucb1x00_irq*, %struct.ucb1x00_irq** %9, align 8
  %34 = getelementptr inbounds %struct.ucb1x00_irq, %struct.ucb1x00_irq* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load void (i32, i8*)*, void (i32, i8*)** %7, align 8
  %36 = load %struct.ucb1x00_irq*, %struct.ucb1x00_irq** %9, align 8
  %37 = getelementptr inbounds %struct.ucb1x00_irq, %struct.ucb1x00_irq* %36, i32 0, i32 0
  store void (i32, i8*)* %35, void (i32, i8*)** %37, align 8
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %31, %15
  %39 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %40 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_irq(i32* %40)
  br label %42

42:                                               ; preds = %38, %4
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
