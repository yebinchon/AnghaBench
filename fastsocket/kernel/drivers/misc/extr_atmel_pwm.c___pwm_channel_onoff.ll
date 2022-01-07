; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_atmel_pwm.c___pwm_channel_onoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_atmel_pwm.c___pwm_channel_onoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.pwm_channel = type { i32 }

@pwm = common dso_local global %struct.TYPE_3__* null, align 8
@PWM_ENA = common dso_local global i32 0, align 4
@PWM_DIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"disable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pwm_channel_onoff(%struct.pwm_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.pwm_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.pwm_channel* %0, %struct.pwm_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pwm, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.pwm_channel*, %struct.pwm_channel** %3, align 8
  %12 = call i32 @pwmcheck(%struct.pwm_channel* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pwm, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @PWM_ENA, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @PWM_DIS, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 1, %25
  %27 = call i32 @pwm_writel(%struct.TYPE_3__* %16, i32 %24, i32 %26)
  store i32 0, i32* %6, align 4
  %28 = load %struct.pwm_channel*, %struct.pwm_channel** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  %33 = call i32 @pwm_dumpregs(%struct.pwm_channel* %28, i8* %32)
  br label %34

34:                                               ; preds = %23, %2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pwm, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pwmcheck(%struct.pwm_channel*) #1

declare dso_local i32 @pwm_writel(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @pwm_dumpregs(%struct.pwm_channel*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
