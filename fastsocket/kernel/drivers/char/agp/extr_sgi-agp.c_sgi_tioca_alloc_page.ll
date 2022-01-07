; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_sgi-agp.c_sgi_tioca_alloc_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_sgi-agp.c_sgi_tioca_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }
%struct.agp_bridge_data = type { i64 }
%struct.tioca_kernel = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.agp_bridge_data*)* @sgi_tioca_alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @sgi_tioca_alloc_page(%struct.agp_bridge_data* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.agp_bridge_data*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tioca_kernel*, align 8
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %3, align 8
  %7 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %8 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.tioca_kernel*
  store %struct.tioca_kernel* %10, %struct.tioca_kernel** %6, align 8
  %11 = load %struct.tioca_kernel*, %struct.tioca_kernel** %6, align 8
  %12 = getelementptr inbounds %struct.tioca_kernel, %struct.tioca_kernel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.page* @alloc_pages_node(i32 %14, i32 %15, i32 0)
  store %struct.page* %16, %struct.page** %4, align 8
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.page* null, %struct.page** %2, align 8
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @get_page(%struct.page* %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @atomic_inc(i32* %24)
  %26 = load %struct.page*, %struct.page** %4, align 8
  store %struct.page* %26, %struct.page** %2, align 8
  br label %27

27:                                               ; preds = %20, %19
  %28 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %28
}

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
