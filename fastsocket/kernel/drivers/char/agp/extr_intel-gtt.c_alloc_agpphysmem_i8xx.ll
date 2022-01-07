; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_alloc_agpphysmem_i8xx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_alloc_agpphysmem_i8xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.page* (%struct.TYPE_5__*)* }
%struct.page = type { i32 }
%struct.agp_memory = type { i64, i64, %struct.page**, i32, i32 }

@agp_bridge = common dso_local global %struct.TYPE_5__* null, align 8
@AGP_PHYS_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.agp_memory* (i64, i32)* @alloc_agpphysmem_i8xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.agp_memory* @alloc_agpphysmem_i8xx(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.agp_memory*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.agp_memory*, align 8
  %7 = alloca %struct.page*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  switch i64 %8, label %19 [
    i64 1, label %9
    i64 4, label %17
  ]

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @agp_bridge, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.page* (%struct.TYPE_5__*)*, %struct.page* (%struct.TYPE_5__*)** %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @agp_bridge, align 8
  %16 = call %struct.page* %14(%struct.TYPE_5__* %15)
  store %struct.page* %16, %struct.page** %7, align 8
  br label %20

17:                                               ; preds = %2
  %18 = call %struct.page* (...) @i8xx_alloc_pages()
  store %struct.page* %18, %struct.page** %7, align 8
  br label %20

19:                                               ; preds = %2
  store %struct.agp_memory* null, %struct.agp_memory** %3, align 8
  br label %88

20:                                               ; preds = %17, %9
  %21 = load %struct.page*, %struct.page** %7, align 8
  %22 = icmp eq %struct.page* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store %struct.agp_memory* null, %struct.agp_memory** %3, align 8
  br label %88

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = call %struct.agp_memory* @agp_create_memory(i64 %25)
  store %struct.agp_memory* %26, %struct.agp_memory** %6, align 8
  %27 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %28 = icmp eq %struct.agp_memory* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store %struct.agp_memory* null, %struct.agp_memory** %3, align 8
  br label %88

30:                                               ; preds = %24
  %31 = load %struct.page*, %struct.page** %7, align 8
  %32 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %33 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %32, i32 0, i32 2
  %34 = load %struct.page**, %struct.page*** %33, align 8
  %35 = getelementptr inbounds %struct.page*, %struct.page** %34, i64 0
  store %struct.page* %31, %struct.page** %35, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp eq i64 %36, 4
  br i1 %37, label %38, label %69

38:                                               ; preds = %30
  %39 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %40 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %39, i32 0, i32 2
  %41 = load %struct.page**, %struct.page*** %40, align 8
  %42 = getelementptr inbounds %struct.page*, %struct.page** %41, i64 0
  %43 = load %struct.page*, %struct.page** %42, align 8
  %44 = getelementptr inbounds %struct.page, %struct.page* %43, i64 1
  %45 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %46 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %45, i32 0, i32 2
  %47 = load %struct.page**, %struct.page*** %46, align 8
  %48 = getelementptr inbounds %struct.page*, %struct.page** %47, i64 1
  store %struct.page* %44, %struct.page** %48, align 8
  %49 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %50 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %49, i32 0, i32 2
  %51 = load %struct.page**, %struct.page*** %50, align 8
  %52 = getelementptr inbounds %struct.page*, %struct.page** %51, i64 1
  %53 = load %struct.page*, %struct.page** %52, align 8
  %54 = getelementptr inbounds %struct.page, %struct.page* %53, i64 1
  %55 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %56 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %55, i32 0, i32 2
  %57 = load %struct.page**, %struct.page*** %56, align 8
  %58 = getelementptr inbounds %struct.page*, %struct.page** %57, i64 2
  store %struct.page* %54, %struct.page** %58, align 8
  %59 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %60 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %59, i32 0, i32 2
  %61 = load %struct.page**, %struct.page*** %60, align 8
  %62 = getelementptr inbounds %struct.page*, %struct.page** %61, i64 2
  %63 = load %struct.page*, %struct.page** %62, align 8
  %64 = getelementptr inbounds %struct.page, %struct.page* %63, i64 1
  %65 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %66 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %65, i32 0, i32 2
  %67 = load %struct.page**, %struct.page*** %66, align 8
  %68 = getelementptr inbounds %struct.page*, %struct.page** %67, i64 3
  store %struct.page* %64, %struct.page** %68, align 8
  br label %69

69:                                               ; preds = %38, %30
  %70 = load i64, i64* %4, align 8
  %71 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %72 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %4, align 8
  %74 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %75 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* @AGP_PHYS_MEMORY, align 4
  %77 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %78 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %80 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %79, i32 0, i32 2
  %81 = load %struct.page**, %struct.page*** %80, align 8
  %82 = getelementptr inbounds %struct.page*, %struct.page** %81, i64 0
  %83 = load %struct.page*, %struct.page** %82, align 8
  %84 = call i32 @page_to_phys(%struct.page* %83)
  %85 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %86 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  store %struct.agp_memory* %87, %struct.agp_memory** %3, align 8
  br label %88

88:                                               ; preds = %69, %29, %23, %19
  %89 = load %struct.agp_memory*, %struct.agp_memory** %3, align 8
  ret %struct.agp_memory* %89
}

declare dso_local %struct.page* @i8xx_alloc_pages(...) #1

declare dso_local %struct.agp_memory* @agp_create_memory(i64) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
