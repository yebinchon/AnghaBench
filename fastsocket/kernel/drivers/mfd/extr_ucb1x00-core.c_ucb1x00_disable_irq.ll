; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_disable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00 = type { i32, i32, i32 }

@UCB_RISING = common dso_local global i32 0, align 4
@UCB_IE_RIS = common dso_local global i32 0, align 4
@UCB_FALLING = common dso_local global i32 0, align 4
@UCB_IE_FAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucb1x00_disable_irq(%struct.ucb1x00* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ucb1x00*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ucb1x00* %0, %struct.ucb1x00** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 16
  br i1 %9, label %10, label %61

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
  br i1 %20, label %21, label %35

21:                                               ; preds = %10
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %26 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %30 = load i32, i32* @UCB_IE_RIS, align 4
  %31 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %32 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %29, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %21, %10
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @UCB_FALLING, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 1, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %45 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %49 = load i32, i32* @UCB_IE_FAL, align 4
  %50 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %51 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %48, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %40, %35
  %55 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %56 = call i32 @ucb1x00_disable(%struct.ucb1x00* %55)
  %57 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %58 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %57, i32 0, i32 2
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %54, %3
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
