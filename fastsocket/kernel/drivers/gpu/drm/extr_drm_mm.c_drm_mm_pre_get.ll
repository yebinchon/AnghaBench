; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_mm.c_drm_mm_pre_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_mm.c_drm_mm_pre_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i32, i32, i32 }
%struct.drm_mm_node = type { i32 }

@MM_UNUSED_TARGET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mm_pre_get(%struct.drm_mm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_mm*, align 8
  %4 = alloca %struct.drm_mm_node*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_mm* %0, %struct.drm_mm** %3, align 8
  %6 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %7 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  br label %9

9:                                                ; preds = %44, %1
  %10 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %11 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MM_UNUSED_TARGET, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %9
  %16 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %17 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %16, i32 0, i32 1
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.drm_mm_node* @kzalloc(i32 4, i32 %19)
  store %struct.drm_mm_node* %20, %struct.drm_mm_node** %4, align 8
  %21 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %22 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %25 = icmp eq %struct.drm_mm_node* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %15
  %30 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %31 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  store i32 %39, i32* %5, align 4
  %40 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %41 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %58

44:                                               ; preds = %15
  %45 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %46 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %50 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %49, i32 0, i32 0
  %51 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %52 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %51, i32 0, i32 2
  %53 = call i32 @list_add_tail(i32* %50, i32* %52)
  br label %9

54:                                               ; preds = %9
  %55 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %56 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock(i32* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %38
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.drm_mm_node* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
