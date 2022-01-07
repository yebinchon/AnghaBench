; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_mm.c_region_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_mm.c_region_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mm = type { i32 }
%struct.nouveau_mm_node = type { i64, i64, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nouveau_mm_node* (%struct.nouveau_mm*, %struct.nouveau_mm_node*, i64)* @region_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nouveau_mm_node* @region_tail(%struct.nouveau_mm* %0, %struct.nouveau_mm_node* %1, i64 %2) #0 {
  %4 = alloca %struct.nouveau_mm_node*, align 8
  %5 = alloca %struct.nouveau_mm*, align 8
  %6 = alloca %struct.nouveau_mm_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nouveau_mm_node*, align 8
  store %struct.nouveau_mm* %0, %struct.nouveau_mm** %5, align 8
  store %struct.nouveau_mm_node* %1, %struct.nouveau_mm_node** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %6, align 8
  %10 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %6, align 8
  store %struct.nouveau_mm_node* %15, %struct.nouveau_mm_node** %4, align 8
  br label %65

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.nouveau_mm_node* @kmalloc(i32 32, i32 %17)
  store %struct.nouveau_mm_node* %18, %struct.nouveau_mm_node** %8, align 8
  %19 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %8, align 8
  %20 = icmp eq %struct.nouveau_mm_node* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store %struct.nouveau_mm_node* null, %struct.nouveau_mm_node** %4, align 8
  br label %65

25:                                               ; preds = %16
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %6, align 8
  %28 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %6, align 8
  %32 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %6, align 8
  %35 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %8, align 8
  %39 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %8, align 8
  %42 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %6, align 8
  %44 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %8, align 8
  %47 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %8, align 8
  %49 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %48, i32 0, i32 4
  %50 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %6, align 8
  %51 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %50, i32 0, i32 4
  %52 = call i32 @list_add(i32* %49, i32* %51)
  %53 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %8, align 8
  %54 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %25
  %58 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %8, align 8
  %59 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %58, i32 0, i32 3
  %60 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %6, align 8
  %61 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %60, i32 0, i32 3
  %62 = call i32 @list_add(i32* %59, i32* %61)
  br label %63

63:                                               ; preds = %57, %25
  %64 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %8, align 8
  store %struct.nouveau_mm_node* %64, %struct.nouveau_mm_node** %4, align 8
  br label %65

65:                                               ; preds = %63, %24, %14
  %66 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %4, align 8
  ret %struct.nouveau_mm_node* %66
}

declare dso_local %struct.nouveau_mm_node* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
