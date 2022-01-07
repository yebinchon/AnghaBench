; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_generic_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_generic_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.agp_bridge_data = type { i32 }
%struct.agp_memory = type { %struct.page**, i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_generic_alloc_pages(%struct.agp_bridge_data* %0, %struct.agp_memory* %1, i64 %2) #0 {
  %4 = alloca %struct.agp_bridge_data*, align 8
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %4, align 8
  store %struct.agp_memory* %1, %struct.agp_memory** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %46, %3
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %12
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load i32, i32* @GFP_DMA32, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @__GFP_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.page* @alloc_page(i32 %22)
  store %struct.page* %23, %struct.page** %7, align 8
  %24 = load %struct.page*, %struct.page** %7, align 8
  %25 = icmp eq %struct.page* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %50

27:                                               ; preds = %17
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = call i32 @map_page_into_agp(%struct.page* %28)
  %30 = load %struct.page*, %struct.page** %7, align 8
  %31 = call i32 @get_page(%struct.page* %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @atomic_inc(i32* %33)
  %35 = load %struct.page*, %struct.page** %7, align 8
  %36 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %37 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %36, i32 0, i32 0
  %38 = load %struct.page**, %struct.page*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.page*, %struct.page** %38, i64 %40
  store %struct.page* %35, %struct.page** %41, align 8
  %42 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %43 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %12

49:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i32, i32* %9, align 4
  ret i32 %51
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
