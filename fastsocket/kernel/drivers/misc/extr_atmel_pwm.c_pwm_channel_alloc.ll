; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_atmel_pwm.c_pwm_channel_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_atmel_pwm.c_pwm_channel_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32**, %struct.pwm_channel**, i32 }
%struct.pwm_channel = type { i32, i32, i32 }

@pwm = common dso_local global %struct.TYPE_4__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@PWM_NCHAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PWM_DIS = common dso_local global i32 0, align 4
@PWM_IDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwm_channel_alloc(i32 %0, %struct.pwm_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_channel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pwm_channel* %1, %struct.pwm_channel** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %10, %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %100

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PWM_NCHAN, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load %struct.pwm_channel*, %struct.pwm_channel** %5, align 8
  %30 = icmp ne %struct.pwm_channel* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %24, %21
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %100

34:                                               ; preds = %28
  %35 = load %struct.pwm_channel*, %struct.pwm_channel** %5, align 8
  %36 = call i32 @memset(%struct.pwm_channel* %35, i32 0, i32 12)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load %struct.pwm_channel**, %struct.pwm_channel*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.pwm_channel*, %struct.pwm_channel** %43, i64 %45
  %47 = load %struct.pwm_channel*, %struct.pwm_channel** %46, align 8
  %48 = icmp ne %struct.pwm_channel* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %94

52:                                               ; preds = %34
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @clk_enable(i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @pwmc_regs(%struct.TYPE_4__* %57, i32 %58)
  %60 = load %struct.pwm_channel*, %struct.pwm_channel** %5, align 8
  %61 = getelementptr inbounds %struct.pwm_channel, %struct.pwm_channel* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.pwm_channel*, %struct.pwm_channel** %5, align 8
  %64 = getelementptr inbounds %struct.pwm_channel, %struct.pwm_channel* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @clk_get_rate(i32 %67)
  %69 = load %struct.pwm_channel*, %struct.pwm_channel** %5, align 8
  %70 = getelementptr inbounds %struct.pwm_channel, %struct.pwm_channel* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.pwm_channel*, %struct.pwm_channel** %5, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load %struct.pwm_channel**, %struct.pwm_channel*** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.pwm_channel*, %struct.pwm_channel** %74, i64 %76
  store %struct.pwm_channel* %71, %struct.pwm_channel** %77, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  store i32* null, i32** %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %85 = load i32, i32* @PWM_DIS, align 4
  %86 = load i32, i32* %4, align 4
  %87 = shl i32 1, %86
  %88 = call i32 @pwm_writel(%struct.TYPE_4__* %84, i32 %85, i32 %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %90 = load i32, i32* @PWM_IDR, align 4
  %91 = load i32, i32* %4, align 4
  %92 = shl i32 1, %91
  %93 = call i32 @pwm_writel(%struct.TYPE_4__* %89, i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %52, %49
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwm, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %94, %31, %18
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @memset(%struct.pwm_channel*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @pwmc_regs(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @pwm_writel(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
