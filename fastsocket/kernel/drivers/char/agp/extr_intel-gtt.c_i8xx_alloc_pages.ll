; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_i8xx_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_i8xx_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* ()* @i8xx_alloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @i8xx_alloc_pages() #0 {
  %1 = alloca %struct.page*, align 8
  %2 = alloca %struct.page*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = load i32, i32* @GFP_DMA32, align 4
  %5 = or i32 %3, %4
  %6 = call %struct.page* @alloc_pages(i32 %5, i32 2)
  store %struct.page* %6, %struct.page** %2, align 8
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = icmp eq %struct.page* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store %struct.page* null, %struct.page** %1, align 8
  br label %26

10:                                               ; preds = %0
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call i64 @set_pages_uc(%struct.page* %11, i32 4)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load %struct.page*, %struct.page** %2, align 8
  %16 = call i32 @set_pages_wb(%struct.page* %15, i32 4)
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i32 @__free_pages(%struct.page* %17, i32 2)
  store %struct.page* null, %struct.page** %1, align 8
  br label %26

19:                                               ; preds = %10
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = call i32 @get_page(%struct.page* %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @atomic_inc(i32* %23)
  %25 = load %struct.page*, %struct.page** %2, align 8
  store %struct.page* %25, %struct.page** %1, align 8
  br label %26

26:                                               ; preds = %19, %14, %9
  %27 = load %struct.page*, %struct.page** %1, align 8
  ret %struct.page* %27
}

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i64 @set_pages_uc(%struct.page*, i32) #1

declare dso_local i32 @set_pages_wb(%struct.page*, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
