; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_fill_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_fill_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_device = type { i32, %struct.omap_hwmod** }
%struct.omap_hwmod = type { i32 }
%struct.resource = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_device_fill_resources(%struct.omap_device* %0, %struct.resource* %1) #0 {
  %3 = alloca %struct.omap_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.omap_hwmod*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.omap_device* %0, %struct.omap_device** %3, align 8
  store %struct.resource* %1, %struct.resource** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %10 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %9, i32 0, i32 1
  %11 = load %struct.omap_hwmod**, %struct.omap_hwmod*** %10, align 8
  %12 = load %struct.omap_hwmod*, %struct.omap_hwmod** %11, align 8
  store %struct.omap_hwmod* %12, %struct.omap_hwmod** %5, align 8
  br label %13

13:                                               ; preds = %30, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %16 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.omap_hwmod*, %struct.omap_hwmod** %5, align 8
  %21 = load %struct.resource*, %struct.resource** %4, align 8
  %22 = call i32 @omap_hwmod_fill_resources(%struct.omap_hwmod* %20, %struct.resource* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.resource*, %struct.resource** %4, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %24, i64 %25
  store %struct.resource* %26, %struct.resource** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load %struct.omap_hwmod*, %struct.omap_hwmod** %5, align 8
  %34 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %33, i32 1
  store %struct.omap_hwmod* %34, %struct.omap_hwmod** %5, align 8
  br label %13

35:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @omap_hwmod_fill_resources(%struct.omap_hwmod*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
