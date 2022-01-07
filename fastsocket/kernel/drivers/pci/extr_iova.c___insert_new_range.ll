; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iova.c___insert_new_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iova.c___insert_new_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iova = type { i64, i64 }
%struct.iova_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iova* (%struct.iova_domain*, i64, i64)* @__insert_new_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iova* @__insert_new_range(%struct.iova_domain* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.iova*, align 8
  %5 = alloca %struct.iova_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iova*, align 8
  store %struct.iova_domain* %0, %struct.iova_domain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = call %struct.iova* (...) @alloc_iova_mem()
  store %struct.iova* %9, %struct.iova** %8, align 8
  %10 = load %struct.iova*, %struct.iova** %8, align 8
  %11 = icmp ne %struct.iova* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load %struct.iova*, %struct.iova** %8, align 8
  store %struct.iova* %13, %struct.iova** %4, align 8
  br label %26

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.iova*, %struct.iova** %8, align 8
  %17 = getelementptr inbounds %struct.iova, %struct.iova* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.iova*, %struct.iova** %8, align 8
  %20 = getelementptr inbounds %struct.iova, %struct.iova* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.iova_domain*, %struct.iova_domain** %5, align 8
  %22 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %21, i32 0, i32 0
  %23 = load %struct.iova*, %struct.iova** %8, align 8
  %24 = call i32 @iova_insert_rbtree(i32* %22, %struct.iova* %23)
  %25 = load %struct.iova*, %struct.iova** %8, align 8
  store %struct.iova* %25, %struct.iova** %4, align 8
  br label %26

26:                                               ; preds = %14, %12
  %27 = load %struct.iova*, %struct.iova** %4, align 8
  ret %struct.iova* %27
}

declare dso_local %struct.iova* @alloc_iova_mem(...) #1

declare dso_local i32 @iova_insert_rbtree(i32*, %struct.iova*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
