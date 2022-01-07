; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-a3/extr_gpio.c_gpio_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-a3/extr_gpio.c_gpio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_private = type { i32, %struct.gpio_private*, i32, i64, i64, i64, i64 }
%struct.inode = type { i32 }
%struct.file = type { %struct.gpio_private* }

@GPIO_MINOR_LAST_PWM = common dso_local global i32 0, align 4
@GPIO_MINOR_LAST = common dso_local global i32 0, align 4
@GPIO_MINOR_PWM0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gpio_lock = common dso_local global i32 0, align 4
@alarmlist = common dso_local global %struct.gpio_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @gpio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.gpio_private*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @GPIO_MINOR_LAST_PWM, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GPIO_MINOR_LAST, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GPIO_MINOR_PWM0, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %65

24:                                               ; preds = %17, %13
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.gpio_private* @kmalloc(i32 56, i32 %25)
  store %struct.gpio_private* %26, %struct.gpio_private** %6, align 8
  %27 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %28 = icmp ne %struct.gpio_private* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %65

32:                                               ; preds = %24
  %33 = call i32 (...) @lock_kernel()
  %34 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %35 = call i32 @memset(%struct.gpio_private* %34, i32 0, i32 56)
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %38 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  store %struct.gpio_private* %39, %struct.gpio_private** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @GPIO_MINOR_LAST, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %32
  %46 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %47 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %49 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %51 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %53 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %55 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %54, i32 0, i32 2
  %56 = call i32 @init_waitqueue_head(i32* %55)
  %57 = call i32 @spin_lock_irq(i32* @gpio_lock)
  %58 = load %struct.gpio_private*, %struct.gpio_private** @alarmlist, align 8
  %59 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  %60 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %59, i32 0, i32 1
  store %struct.gpio_private* %58, %struct.gpio_private** %60, align 8
  %61 = load %struct.gpio_private*, %struct.gpio_private** %6, align 8
  store %struct.gpio_private* %61, %struct.gpio_private** @alarmlist, align 8
  %62 = call i32 @spin_unlock_irq(i32* @gpio_lock)
  br label %63

63:                                               ; preds = %45, %32
  %64 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %29, %21
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.gpio_private* @kmalloc(i32, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @memset(%struct.gpio_private*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
