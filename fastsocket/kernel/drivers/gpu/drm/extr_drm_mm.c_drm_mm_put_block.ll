; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_mm.c_drm_mm_put_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_mm.c_drm_mm_put_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i32, %struct.drm_mm* }
%struct.drm_mm = type { i64, i32, i32 }

@MM_UNUSED_TARGET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_mm_put_block(%struct.drm_mm_node* %0) #0 {
  %2 = alloca %struct.drm_mm_node*, align 8
  %3 = alloca %struct.drm_mm*, align 8
  store %struct.drm_mm_node* %0, %struct.drm_mm_node** %2, align 8
  %4 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %5 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %4, i32 0, i32 1
  %6 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  store %struct.drm_mm* %6, %struct.drm_mm** %3, align 8
  %7 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %8 = call i32 @drm_mm_remove_node(%struct.drm_mm_node* %7)
  %9 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %10 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %13 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MM_UNUSED_TARGET, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %19 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %18, i32 0, i32 0
  %20 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %21 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %20, i32 0, i32 2
  %22 = call i32 @list_add(i32* %19, i32* %21)
  %23 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %24 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  br label %30

27:                                               ; preds = %1
  %28 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %29 = call i32 @kfree(%struct.drm_mm_node* %28)
  br label %30

30:                                               ; preds = %27, %17
  %31 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %32 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock(i32* %32)
  ret void
}

declare dso_local i32 @drm_mm_remove_node(%struct.drm_mm_node*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.drm_mm_node*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
