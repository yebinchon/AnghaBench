; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_enable_clocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_enable_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_device = type { i32, %struct.omap_hwmod** }
%struct.omap_hwmod = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_device_enable_clocks(%struct.omap_device* %0) #0 {
  %2 = alloca %struct.omap_device*, align 8
  %3 = alloca %struct.omap_hwmod*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_device* %0, %struct.omap_device** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.omap_device*, %struct.omap_device** %2, align 8
  %6 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %5, i32 0, i32 1
  %7 = load %struct.omap_hwmod**, %struct.omap_hwmod*** %6, align 8
  %8 = load %struct.omap_hwmod*, %struct.omap_hwmod** %7, align 8
  store %struct.omap_hwmod* %8, %struct.omap_hwmod** %3, align 8
  br label %9

9:                                                ; preds = %18, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.omap_device*, %struct.omap_device** %2, align 8
  %12 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %17 = call i32 @omap_hwmod_enable_clocks(%struct.omap_hwmod* %16)
  br label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %22 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %21, i32 1
  store %struct.omap_hwmod* %22, %struct.omap_hwmod** %3, align 8
  br label %9

23:                                               ; preds = %9
  ret i32 0
}

declare dso_local i32 @omap_hwmod_enable_clocks(%struct.omap_hwmod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
