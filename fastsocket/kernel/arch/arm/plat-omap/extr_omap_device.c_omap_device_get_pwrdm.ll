; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_get_pwrdm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_get_pwrdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32 }
%struct.omap_device = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.powerdomain* @omap_device_get_pwrdm(%struct.omap_device* %0) #0 {
  %2 = alloca %struct.powerdomain*, align 8
  %3 = alloca %struct.omap_device*, align 8
  store %struct.omap_device* %0, %struct.omap_device** %3, align 8
  %4 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %5 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.powerdomain* null, %struct.powerdomain** %2, align 8
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %11 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.powerdomain* @omap_hwmod_get_pwrdm(i32 %14)
  store %struct.powerdomain* %15, %struct.powerdomain** %2, align 8
  br label %16

16:                                               ; preds = %9, %8
  %17 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  ret %struct.powerdomain* %17
}

declare dso_local %struct.powerdomain* @omap_hwmod_get_pwrdm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
