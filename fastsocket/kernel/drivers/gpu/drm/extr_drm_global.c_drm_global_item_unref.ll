; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_global.c_drm_global_item_unref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_global.c_drm_global_item_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_global_item = type { i64, i32, i32* }
%struct.drm_global_reference = type { i64, i32 (%struct.drm_global_reference*)*, i32* }

@glob = common dso_local global %struct.drm_global_item* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_global_item_unref(%struct.drm_global_reference* %0) #0 {
  %2 = alloca %struct.drm_global_reference*, align 8
  %3 = alloca %struct.drm_global_item*, align 8
  store %struct.drm_global_reference* %0, %struct.drm_global_reference** %2, align 8
  %4 = load %struct.drm_global_item*, %struct.drm_global_item** @glob, align 8
  %5 = load %struct.drm_global_reference*, %struct.drm_global_reference** %2, align 8
  %6 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %4, i64 %7
  store %struct.drm_global_item* %8, %struct.drm_global_item** %3, align 8
  %9 = load %struct.drm_global_item*, %struct.drm_global_item** %3, align 8
  %10 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.drm_global_item*, %struct.drm_global_item** %3, align 8
  %13 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.drm_global_reference*, %struct.drm_global_reference** %2, align 8
  %19 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.drm_global_item*, %struct.drm_global_item** %3, align 8
  %22 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.drm_global_item*, %struct.drm_global_item** %3, align 8
  %28 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load %struct.drm_global_reference*, %struct.drm_global_reference** %2, align 8
  %34 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %33, i32 0, i32 1
  %35 = load i32 (%struct.drm_global_reference*)*, i32 (%struct.drm_global_reference*)** %34, align 8
  %36 = load %struct.drm_global_reference*, %struct.drm_global_reference** %2, align 8
  %37 = call i32 %35(%struct.drm_global_reference* %36)
  %38 = load %struct.drm_global_item*, %struct.drm_global_item** %3, align 8
  %39 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %32, %1
  %41 = load %struct.drm_global_item*, %struct.drm_global_item** %3, align 8
  %42 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
