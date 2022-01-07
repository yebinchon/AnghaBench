; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_scatterwalk.c_scatterwalk_pagedone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_scatterwalk.c_scatterwalk_pagedone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatter_walk = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scatter_walk*, i32, i32)* @scatterwalk_pagedone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scatterwalk_pagedone(%struct.scatter_walk* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scatter_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  store %struct.scatter_walk* %0, %struct.scatter_walk** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %3
  %11 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %12 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = call %struct.page* @sg_page(%struct.TYPE_3__* %13)
  %15 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %16 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.page, %struct.page* %14, i64 %21
  store %struct.page* %22, %struct.page** %7, align 8
  %23 = load %struct.page*, %struct.page** %7, align 8
  %24 = call i32 @PageSlab(%struct.page* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %10
  %27 = load %struct.page*, %struct.page** %7, align 8
  %28 = call i32 @flush_dcache_page(%struct.page* %27)
  br label %29

29:                                               ; preds = %26, %10
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %30
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %37 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @PAGE_MASK, align 4
  %41 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %42 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %46 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %49 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %54 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %52, %57
  %59 = icmp sge i32 %47, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %33
  %61 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %62 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %63 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = call i32 @scatterwalk_sg_next(%struct.TYPE_3__* %64)
  %66 = call i32 @scatterwalk_start(%struct.scatter_walk* %61, i32 %65)
  br label %67

67:                                               ; preds = %60, %33
  br label %68

68:                                               ; preds = %67, %30
  ret void
}

declare dso_local %struct.page* @sg_page(%struct.TYPE_3__*) #1

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @scatterwalk_start(%struct.scatter_walk*, i32) #1

declare dso_local i32 @scatterwalk_sg_next(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
