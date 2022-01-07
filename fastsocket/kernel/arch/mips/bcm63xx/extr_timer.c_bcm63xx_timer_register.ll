; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_timer.c_bcm63xx_timer_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_timer.c_bcm63xx_timer_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (i8*)*, i8* }

@BCM63XX_TIMER_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@timer_data_lock = common dso_local global i32 0, align 4
@timer_data = common dso_local global %struct.TYPE_2__* null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm63xx_timer_register(i32 %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @BCM63XX_TIMER_COUNT, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load void (i8*)*, void (i8*)** %6, align 8
  %15 = icmp ne void (i8*)* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %49

19:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* @timer_data_lock, i64 %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer_data, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load void (i8*)*, void (i8*)** %26, align 8
  %28 = icmp ne void (i8*)* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %45

32:                                               ; preds = %19
  %33 = load void (i8*)*, void (i8*)** %6, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer_data, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store void (i8*)* %33, void (i8*)** %38, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer_data, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i8* %39, i8** %44, align 8
  br label %45

45:                                               ; preds = %32, %29
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* @timer_data_lock, i64 %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
