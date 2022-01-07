; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_atmel_pwm.c_pwm_clk_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_atmel_pwm.c_pwm_clk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pwm = common dso_local global %struct.TYPE_4__* null, align 8
@PWM_MR = common dso_local global i32 0, align 4
@PWM_CPR_CLKA = common dso_local global i32 0, align 4
@PWM_CPR_CLKB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwm_clk_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 %10, 8
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp uge i32 %16, 10
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp ugt i32 %22, 255
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %18, %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %68

27:                                               ; preds = %21
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %33 = load i32, i32* @PWM_MR, align 4
  %34 = call i32 @pwm_readl(%struct.TYPE_4__* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @PWM_CPR_CLKA, align 4
  store i32 %42, i32* %9, align 4
  br label %54

43:                                               ; preds = %27
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, -65536
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 %48, 16
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @PWM_CPR_CLKB, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %47, %43
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %59 = load i32, i32* @PWM_MR, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @pwm_writel(%struct.TYPE_4__* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %24
  %69 = load i32, i32* %3, align 4
  ret i32 %69
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
