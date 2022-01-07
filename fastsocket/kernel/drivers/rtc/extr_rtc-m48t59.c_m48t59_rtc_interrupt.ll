; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.m48t59_plat_data* }
%struct.m48t59_plat_data = type { i32 }
%struct.m48t59_private = type { i32, i32 }

@M48T59_FLAGS = common dso_local global i32 0, align 4
@M48T59_FLAGS_AF = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @m48t59_rtc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t59_rtc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.m48t59_plat_data*, align 8
  %9 = alloca %struct.m48t59_private*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.device*
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.platform_device* @to_platform_device(%struct.device* %13)
  store %struct.platform_device* %14, %struct.platform_device** %7, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %17, align 8
  store %struct.m48t59_plat_data* %18, %struct.m48t59_plat_data** %8, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %20 = call %struct.m48t59_private* @platform_get_drvdata(%struct.platform_device* %19)
  store %struct.m48t59_private* %20, %struct.m48t59_private** %9, align 8
  %21 = load %struct.m48t59_private*, %struct.m48t59_private** %9, align 8
  %22 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load i32, i32* @M48T59_FLAGS, align 4
  %25 = call i32 @M48T59_READ(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.m48t59_private*, %struct.m48t59_private** %9, align 8
  %27 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @M48T59_FLAGS_AF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %2
  %34 = load %struct.m48t59_private*, %struct.m48t59_private** %9, align 8
  %35 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RTC_AF, align 4
  %38 = load i32, i32* @RTC_IRQF, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @rtc_update_irq(i32 %36, i32 1, i32 %39)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %2
  %43 = load i32, i32* @IRQ_NONE, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %33
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.m48t59_private* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @M48T59_READ(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
