; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_enable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00 = type { i32, i32, i32 }

@UCB_RISING = common dso_local global i32 0, align 4
@UCB_IE_RIS = common dso_local global i32 0, align 4
@UCB_FALLING = common dso_local global i32 0, align 4
@UCB_IE_FAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucb1x00_enable_irq(%struct.ucb1x00* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ucb1x00*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ucb1x00* %0, %struct.ucb1x00** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 16
  br i1 %9, label %10, label %59

10:                                               ; preds = %3
  %11 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %12 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %11, i32 0, i32 2
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %16 = call i32 @ucb1x00_enable(%struct.ucb1x00* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @UCB_RISING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %10
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  %24 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %25 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %29 = load i32, i32* @UCB_IE_RIS, align 4
  %30 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %31 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %28, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %21, %10
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @UCB_FALLING, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 1, %40
  %42 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %43 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %47 = load i32, i32* @UCB_IE_FAL, align 4
  %48 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %49 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %46, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %39, %34
  %53 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %54 = call i32 @ucb1x00_disable(%struct.ucb1x00* %53)
  %55 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %56 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %55, i32 0, i32 2
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %52, %3
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ucb1x00_enable(%struct.ucb1x00*) #1

declare dso_local i32 @ucb1x00_reg_write(%struct.ucb1x00*, i32, i32) #1

declare dso_local i32 @ucb1x00_disable(%struct.ucb1x00*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
