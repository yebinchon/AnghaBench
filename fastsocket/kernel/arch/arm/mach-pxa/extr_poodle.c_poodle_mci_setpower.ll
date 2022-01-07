; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_poodle.c_poodle_mci_setpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_poodle.c_poodle_mci_setpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.pxamci_platform_data* }
%struct.pxamci_platform_data = type { i32 }

@POODLE_GPIO_SD_PWR = common dso_local global i32 0, align 4
@POODLE_GPIO_SD_PWR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @poodle_mci_setpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poodle_mci_setpower(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pxamci_platform_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load %struct.pxamci_platform_data*, %struct.pxamci_platform_data** %7, align 8
  store %struct.pxamci_platform_data* %8, %struct.pxamci_platform_data** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 1, %9
  %11 = load %struct.pxamci_platform_data*, %struct.pxamci_platform_data** %5, align 8
  %12 = getelementptr inbounds %struct.pxamci_platform_data, %struct.pxamci_platform_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @POODLE_GPIO_SD_PWR, align 4
  %18 = call i32 @gpio_set_value(i32 %17, i32 1)
  %19 = call i32 @mdelay(i32 2)
  %20 = load i32, i32* @POODLE_GPIO_SD_PWR1, align 4
  %21 = call i32 @gpio_set_value(i32 %20, i32 1)
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @POODLE_GPIO_SD_PWR1, align 4
  %24 = call i32 @gpio_set_value(i32 %23, i32 0)
  %25 = load i32, i32* @POODLE_GPIO_SD_PWR, align 4
  %26 = call i32 @gpio_set_value(i32 %25, i32 0)
  br label %27

27:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
