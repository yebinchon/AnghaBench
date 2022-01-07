; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_etrax_gpio_wake_up_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_etrax_gpio_wake_up_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_private = type { i64*, i64, i64, i64, %struct.gpio_private*, i32 }

@gpio_lock = common dso_local global i32 0, align 4
@alarmlist = common dso_local global %struct.gpio_private* null, align 8
@GPIO_MINOR_G = common dso_local global i64 0, align 8
@R_PORT_G_DATA = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"etrax_gpio_wake_up_check %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etrax_gpio_wake_up_check() #0 {
  %1 = alloca %struct.gpio_private*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %5)
  %7 = load %struct.gpio_private*, %struct.gpio_private** @alarmlist, align 8
  store %struct.gpio_private* %7, %struct.gpio_private** %1, align 8
  br label %8

8:                                                ; preds = %54, %0
  %9 = load %struct.gpio_private*, %struct.gpio_private** %1, align 8
  %10 = icmp ne %struct.gpio_private* %9, null
  br i1 %10, label %11, label %58

11:                                               ; preds = %8
  %12 = load %struct.gpio_private*, %struct.gpio_private** %1, align 8
  %13 = call i64 @USE_PORTS(%struct.gpio_private* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.gpio_private*, %struct.gpio_private** %1, align 8
  %17 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %2, align 8
  br label %30

20:                                               ; preds = %11
  %21 = load %struct.gpio_private*, %struct.gpio_private** %1, align 8
  %22 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GPIO_MINOR_G, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i64*, i64** @R_PORT_G_DATA, align 8
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %26, %20
  br label %30

30:                                               ; preds = %29, %15
  %31 = load i64, i64* %2, align 8
  %32 = load %struct.gpio_private*, %struct.gpio_private** %1, align 8
  %33 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = and i64 %31, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* %2, align 8
  %39 = xor i64 %38, -1
  %40 = load %struct.gpio_private*, %struct.gpio_private** %1, align 8
  %41 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = and i64 %39, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %37, %30
  %46 = load %struct.gpio_private*, %struct.gpio_private** %1, align 8
  %47 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = call i32 @DP(i32 %49)
  %51 = load %struct.gpio_private*, %struct.gpio_private** %1, align 8
  %52 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %51, i32 0, i32 5
  %53 = call i32 @wake_up_interruptible(i32* %52)
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %45, %37
  %55 = load %struct.gpio_private*, %struct.gpio_private** %1, align 8
  %56 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %55, i32 0, i32 4
  %57 = load %struct.gpio_private*, %struct.gpio_private** %56, align 8
  store %struct.gpio_private* %57, %struct.gpio_private** %1, align 8
  br label %8

58:                                               ; preds = %8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %59)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @USE_PORTS(%struct.gpio_private*) #1

declare dso_local i32 @DP(i32) #1

declare dso_local i32 @printk(i8*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
