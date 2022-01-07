; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_i810_free_by_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_i810_free_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32)* }
%struct.agp_memory = type { i64, i32, i32*, i32 }

@AGP_PHYS_MEMORY = common dso_local global i64 0, align 8
@agp_bridge = common dso_local global %struct.TYPE_4__* null, align 8
@AGP_PAGE_DESTROY_UNMAP = common dso_local global i32 0, align 4
@AGP_PAGE_DESTROY_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_memory*)* @intel_i810_free_by_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_i810_free_by_type(%struct.agp_memory* %0) #0 {
  %2 = alloca %struct.agp_memory*, align 8
  store %struct.agp_memory* %0, %struct.agp_memory** %2, align 8
  %3 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %4 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @agp_free_key(i32 %5)
  %7 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %8 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AGP_PHYS_MEMORY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %52

12:                                               ; preds = %1
  %13 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %14 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %19 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @i8xx_destroy_pages(i32 %22)
  br label %49

24:                                               ; preds = %12
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (i32, i32)*, i32 (i32, i32)** %28, align 8
  %30 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %31 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AGP_PAGE_DESTROY_UNMAP, align 4
  %36 = call i32 %29(i32 %34, i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %43 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AGP_PAGE_DESTROY_FREE, align 4
  %48 = call i32 %41(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %24, %17
  %50 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %51 = call i32 @agp_free_page_array(%struct.agp_memory* %50)
  br label %52

52:                                               ; preds = %49, %1
  %53 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  %54 = call i32 @kfree(%struct.agp_memory* %53)
  ret void
}

declare dso_local i32 @agp_free_key(i32) #1

declare dso_local i32 @i8xx_destroy_pages(i32) #1

declare dso_local i32 @agp_free_page_array(%struct.agp_memory*) #1

declare dso_local i32 @kfree(%struct.agp_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
