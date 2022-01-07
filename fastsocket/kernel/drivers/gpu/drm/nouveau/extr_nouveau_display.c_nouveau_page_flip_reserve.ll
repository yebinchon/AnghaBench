; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_page_flip_reserve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_page_flip_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i32 }

@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_bo*, %struct.nouveau_bo*)* @nouveau_page_flip_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_page_flip_reserve(%struct.nouveau_bo* %0, %struct.nouveau_bo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_bo*, align 8
  %5 = alloca %struct.nouveau_bo*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %4, align 8
  store %struct.nouveau_bo* %1, %struct.nouveau_bo** %5, align 8
  %7 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %8 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %9 = call i32 @nouveau_bo_pin(%struct.nouveau_bo* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %16 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %15, i32 0, i32 0
  %17 = call i32 @ttm_bo_reserve(i32* %16, i32 0, i32 0, i32 0, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %41

21:                                               ; preds = %14
  %22 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %23 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %24 = icmp ne %struct.nouveau_bo* %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %30 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %29, i32 0, i32 0
  %31 = call i32 @ttm_bo_reserve(i32* %30, i32 0, i32 0, i32 0, i32 0)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %37

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %21
  store i32 0, i32* %3, align 4
  br label %45

37:                                               ; preds = %34
  %38 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %39 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %38, i32 0, i32 0
  %40 = call i32 @ttm_bo_unreserve(i32* %39)
  br label %41

41:                                               ; preds = %37, %20
  %42 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %43 = call i32 @nouveau_bo_unpin(%struct.nouveau_bo* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %36, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @nouveau_bo_pin(%struct.nouveau_bo*, i32) #1

declare dso_local i32 @ttm_bo_reserve(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ttm_bo_unreserve(i32*) #1

declare dso_local i32 @nouveau_bo_unpin(%struct.nouveau_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
