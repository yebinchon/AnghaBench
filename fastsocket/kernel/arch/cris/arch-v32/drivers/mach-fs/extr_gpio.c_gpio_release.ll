; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-fs/extr_gpio.c_gpio_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-fs/extr_gpio.c_gpio_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_private = type { i64, i32, i64, %struct.gpio_private* }
%struct.inode = type { i32 }
%struct.file = type { i64 }

@alarm_lock = common dso_local global i32 0, align 4
@alarmlist = common dso_local global %struct.gpio_private* null, align 8
@GPIO_MINOR_A = common dso_local global i64 0, align 8
@gpio_some_alarms = common dso_local global i64 0, align 8
@gpio_pa_high_alarms = common dso_local global i64 0, align 8
@gpio_pa_low_alarms = common dso_local global i64 0, align 8
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
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %10 = call i32 @spin_lock_irq(i32* @alarm_lock)
  %11 = load %struct.gpio_private*, %struct.gpio_private** @alarmlist, align 8
  store %struct.gpio_private* %11, %struct.gpio_private** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.gpio_private*
  store %struct.gpio_private* %15, %struct.gpio_private** %6, align 8
  %16 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %17 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %18 = icmp eq %struct.gpio_private* %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %21 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %20, i32 0, i32 3
  %22 = load %struct.gpio_private*, %struct.gpio_private** %21, align 8
  store %struct.gpio_private* %22, %struct.gpio_private** @alarmlist, align 8
  br label %40

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %30, %23
  %25 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %26 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %25, i32 0, i32 3
  %27 = load %struct.gpio_private*, %struct.gpio_private** %26, align 8
  %28 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %29 = icmp ne %struct.gpio_private* %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %32 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %31, i32 0, i32 3
  %33 = load %struct.gpio_private*, %struct.gpio_private** %32, align 8
  store %struct.gpio_private* %33, %struct.gpio_private** %5, align 8
  br label %24

34:                                               ; preds = %24
  %35 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %36 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %35, i32 0, i32 3
  %37 = load %struct.gpio_private*, %struct.gpio_private** %36, align 8
  %38 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %39 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %38, i32 0, i32 3
  store %struct.gpio_private* %37, %struct.gpio_private** %39, align 8
  br label %40

40:                                               ; preds = %34, %19
  %41 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %42 = call i32 @kfree(%struct.gpio_private* %41)
  %43 = load %struct.gpio_private*, %struct.gpio_private** @alarmlist, align 8
  store %struct.gpio_private* %43, %struct.gpio_private** %5, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %44

44:                                               ; preds = %76, %40
  %45 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %46 = icmp ne %struct.gpio_private* %45, null
  br i1 %46, label %47, label %80

47:                                               ; preds = %44
  %48 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %49 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @GPIO_MINOR_A, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %55 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %60 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %8, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %53, %47
  %66 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %67 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %70 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = or i64 %68, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  store i64 1, i64* %9, align 8
  br label %76

76:                                               ; preds = %75, %65
  %77 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %78 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %77, i32 0, i32 3
  %79 = load %struct.gpio_private*, %struct.gpio_private** %78, align 8
  store %struct.gpio_private* %79, %struct.gpio_private** %5, align 8
  br label %44

80:                                               ; preds = %44
  %81 = load i64, i64* %9, align 8
  store i64 %81, i64* @gpio_some_alarms, align 8
  %82 = load i64, i64* %7, align 8
  store i64 %82, i64* @gpio_pa_high_alarms, align 8
  %83 = load i64, i64* %8, align 8
  store i64 %83, i64* @gpio_pa_low_alarms, align 8
  %84 = call i32 @spin_unlock_irq(i32* @alarm_lock)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.gpio_private*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
