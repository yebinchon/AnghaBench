; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_gpio_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_gpio_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_private = type { i32, i32, %struct.gpio_private* }
%struct.inode = type { i32 }
%struct.file = type { %struct.gpio_private* }

@gpio_lock = common dso_local global i32 0, align 4
@alarmlist = common dso_local global %struct.gpio_private* null, align 8
@gpio_some_alarms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @gpio_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.gpio_private*, align 8
  %6 = alloca %struct.gpio_private*, align 8
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %8)
  %10 = load %struct.gpio_private*, %struct.gpio_private** @alarmlist, align 8
  store %struct.gpio_private* %10, %struct.gpio_private** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.gpio_private*, %struct.gpio_private** %12, align 8
  store %struct.gpio_private* %13, %struct.gpio_private** %6, align 8
  %14 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %15 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %16 = icmp eq %struct.gpio_private* %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %19 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %18, i32 0, i32 2
  %20 = load %struct.gpio_private*, %struct.gpio_private** %19, align 8
  store %struct.gpio_private* %20, %struct.gpio_private** @alarmlist, align 8
  br label %38

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %28, %21
  %23 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %24 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %23, i32 0, i32 2
  %25 = load %struct.gpio_private*, %struct.gpio_private** %24, align 8
  %26 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %27 = icmp ne %struct.gpio_private* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %30 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %29, i32 0, i32 2
  %31 = load %struct.gpio_private*, %struct.gpio_private** %30, align 8
  store %struct.gpio_private* %31, %struct.gpio_private** %5, align 8
  br label %22

32:                                               ; preds = %22
  %33 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %34 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %33, i32 0, i32 2
  %35 = load %struct.gpio_private*, %struct.gpio_private** %34, align 8
  %36 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %37 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %36, i32 0, i32 2
  store %struct.gpio_private* %35, %struct.gpio_private** %37, align 8
  br label %38

38:                                               ; preds = %32, %17
  %39 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %40 = call i32 @kfree(%struct.gpio_private* %39)
  %41 = load %struct.gpio_private*, %struct.gpio_private** @alarmlist, align 8
  store %struct.gpio_private* %41, %struct.gpio_private** %5, align 8
  br label %42

42:                                               ; preds = %55, %38
  %43 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %44 = icmp ne %struct.gpio_private* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %47 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %50 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 1, i32* @gpio_some_alarms, align 4
  br label %60

55:                                               ; preds = %45
  %56 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %57 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %56, i32 0, i32 2
  %58 = load %struct.gpio_private*, %struct.gpio_private** %57, align 8
  store %struct.gpio_private* %58, %struct.gpio_private** %5, align 8
  br label %42

59:                                               ; preds = %42
  store i32 0, i32* @gpio_some_alarms, align 4
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %61)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfree(%struct.gpio_private*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
