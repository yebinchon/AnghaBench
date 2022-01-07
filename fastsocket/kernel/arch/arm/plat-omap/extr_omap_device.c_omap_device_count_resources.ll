; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_count_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_count_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_device = type { i32, %struct.TYPE_2__, %struct.omap_hwmod** }
%struct.TYPE_2__ = type { i32 }
%struct.omap_hwmod = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"omap_device: %s: counted %d total resources across %d hwmods\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_device_count_resources(%struct.omap_device* %0) #0 {
  %2 = alloca %struct.omap_device*, align 8
  %3 = alloca %struct.omap_hwmod*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omap_device* %0, %struct.omap_device** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.omap_device*, %struct.omap_device** %2, align 8
  %7 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %6, i32 0, i32 2
  %8 = load %struct.omap_hwmod**, %struct.omap_hwmod*** %7, align 8
  %9 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  store %struct.omap_hwmod* %9, %struct.omap_hwmod** %3, align 8
  br label %10

10:                                               ; preds = %23, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.omap_device*, %struct.omap_device** %2, align 8
  %13 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %18 = call i64 @omap_hwmod_count_resources(%struct.omap_hwmod* %17)
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %27 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %26, i32 1
  store %struct.omap_hwmod* %27, %struct.omap_hwmod** %3, align 8
  br label %10

28:                                               ; preds = %10
  %29 = load %struct.omap_device*, %struct.omap_device** %2, align 8
  %30 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.omap_device*, %struct.omap_device** %2, align 8
  %35 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %36)
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @omap_hwmod_count_resources(%struct.omap_hwmod*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
