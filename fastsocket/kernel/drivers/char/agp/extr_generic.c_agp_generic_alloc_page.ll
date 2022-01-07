; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_generic_alloc_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_generic_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }
%struct.agp_bridge_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @agp_generic_alloc_page(%struct.agp_bridge_data* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.agp_bridge_data*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = load i32, i32* @GFP_DMA32, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @__GFP_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.page* @alloc_page(i32 %9)
  store %struct.page* %10, %struct.page** %4, align 8
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = icmp eq %struct.page* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.page* null, %struct.page** %2, align 8
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @map_page_into_agp(%struct.page* %15)
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i32 @get_page(%struct.page* %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @atomic_inc(i32* %20)
  %22 = load %struct.page*, %struct.page** %4, align 8
  store %struct.page* %22, %struct.page** %2, align 8
  br label %23

23:                                               ; preds = %14, %13
  %24 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %24
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @map_page_into_agp(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
