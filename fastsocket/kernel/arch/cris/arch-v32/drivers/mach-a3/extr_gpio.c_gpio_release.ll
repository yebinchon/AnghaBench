; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-a3/extr_gpio.c_gpio_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-a3/extr_gpio.c_gpio_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_private = type { i64, i32, i64, %struct.gpio_private* }
%struct.inode = type { i32 }
%struct.file = type { %struct.gpio_private* }

@GPIO_MINOR_LAST = common dso_local global i64 0, align 8
@gpio_lock = common dso_local global i32 0, align 4
@alarmlist = common dso_local global %struct.gpio_private* null, align 8
@GPIO_MINOR_A = common dso_local global i64 0, align 8
@CONFIG_ETRAX_VIRTUAL_GPIO_INTERRUPT_PA_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @gpio_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.gpio_private*, align 8
  %6 = alloca %struct.gpio_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.gpio_private*, %struct.gpio_private** %10, align 8
  store %struct.gpio_private* %11, %struct.gpio_private** %6, align 8
  %12 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %13 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @GPIO_MINOR_LAST, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %73

17:                                               ; preds = %2
  %18 = call i32 @spin_lock_irq(i32* @gpio_lock)
  %19 = load %struct.gpio_private*, %struct.gpio_private** @alarmlist, align 8
  store %struct.gpio_private* %19, %struct.gpio_private** %5, align 8
  %20 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %21 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %22 = icmp eq %struct.gpio_private* %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %25 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %24, i32 0, i32 3
  %26 = load %struct.gpio_private*, %struct.gpio_private** %25, align 8
  store %struct.gpio_private* %26, %struct.gpio_private** @alarmlist, align 8
  br label %44

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %34, %27
  %29 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %30 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %29, i32 0, i32 3
  %31 = load %struct.gpio_private*, %struct.gpio_private** %30, align 8
  %32 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %33 = icmp ne %struct.gpio_private* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %36 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %35, i32 0, i32 3
  %37 = load %struct.gpio_private*, %struct.gpio_private** %36, align 8
  store %struct.gpio_private* %37, %struct.gpio_private** %5, align 8
  br label %28

38:                                               ; preds = %28
  %39 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %40 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %39, i32 0, i32 3
  %41 = load %struct.gpio_private*, %struct.gpio_private** %40, align 8
  %42 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %43 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %42, i32 0, i32 3
  store %struct.gpio_private* %41, %struct.gpio_private** %43, align 8
  br label %44

44:                                               ; preds = %38, %23
  %45 = load %struct.gpio_private*, %struct.gpio_private** @alarmlist, align 8
  store %struct.gpio_private* %45, %struct.gpio_private** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %46

46:                                               ; preds = %67, %44
  %47 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %48 = icmp ne %struct.gpio_private* %47, null
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %51 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @GPIO_MINOR_A, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %57 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %7, align 8
  %61 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %62 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %8, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %55, %49
  %68 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %69 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %68, i32 0, i32 3
  %70 = load %struct.gpio_private*, %struct.gpio_private** %69, align 8
  store %struct.gpio_private* %70, %struct.gpio_private** %5, align 8
  br label %46

71:                                               ; preds = %46
  %72 = call i32 @spin_unlock_irq(i32* @gpio_lock)
  br label %73

73:                                               ; preds = %71, %2
  %74 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %75 = call i32 @kfree(%struct.gpio_private* %74)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.gpio_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
