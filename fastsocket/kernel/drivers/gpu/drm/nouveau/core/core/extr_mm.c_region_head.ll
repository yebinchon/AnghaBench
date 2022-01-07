; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_mm.c_region_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_mm.c_region_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mm = type { i32 }
%struct.nouveau_mm_node = type { i64, i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nouveau_mm_node* (%struct.nouveau_mm*, %struct.nouveau_mm_node*, i64)* @region_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nouveau_mm_node* @region_head(%struct.nouveau_mm* %0, %struct.nouveau_mm_node* %1, i64 %2) #0 {
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
  br label %68

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
  br label %68

25:                                               ; preds = %16
  %26 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %6, align 8
  %27 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %8, align 8
  %30 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %8, align 8
  %33 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %6, align 8
  %35 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %8, align 8
  %38 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %6, align 8
  %41 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %6, align 8
  %48 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %8, align 8
  %52 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %51, i32 0, i32 3
  %53 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %6, align 8
  %54 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %53, i32 0, i32 3
  %55 = call i32 @list_add_tail(i32* %52, i32* %54)
  %56 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %8, align 8
  %57 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %25
  %61 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %8, align 8
  %62 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %61, i32 0, i32 2
  %63 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %6, align 8
  %64 = getelementptr inbounds %struct.nouveau_mm_node, %struct.nouveau_mm_node* %63, i32 0, i32 2
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  br label %66

66:                                               ; preds = %60, %25
  %67 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %8, align 8
  store %struct.nouveau_mm_node* %67, %struct.nouveau_mm_node** %4, align 8
  br label %68

68:                                               ; preds = %66, %24, %14
  %69 = load %struct.nouveau_mm_node*, %struct.nouveau_mm_node** %4, align 8
  ret %struct.nouveau_mm_node* %69
}

declare dso_local %struct.nouveau_mm_node* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
