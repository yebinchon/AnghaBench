; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_atmel_pwm.c_pwm_clk_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_atmel_pwm.c_pwm_clk_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@pwm = common dso_local global %struct.TYPE_4__* null, align 8
@PWM_MR = common dso_local global i32 0, align 4
@PWM_CPR_CLKA = common dso_local global i32 0, align 4
@PWM_CPR_CLKB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwm_clk_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %10 = load i32, i32* @PWM_MR, align 4
  %11 = call i32 @pwm_readl(%struct.TYPE_4__* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @PWM_CPR_CLKA, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %17 = load i32, i32* @PWM_MR, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, -65536
  %20 = call i32 @pwm_writel(%struct.TYPE_4__* %16, i32 %17, i32 %19)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @PWM_CPR_CLKB, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %27 = load i32, i32* @PWM_MR, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 65535
  %30 = call i32 @pwm_writel(%struct.TYPE_4__* %26, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %25, %21
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pwm_readl(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pwm_writel(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
