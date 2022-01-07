; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_hashtab.c_drm_ht_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_hashtab.c_drm_ht_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_open_hash = type { i32, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_ht_remove(%struct.drm_open_hash* %0) #0 {
  %2 = alloca %struct.drm_open_hash*, align 8
  store %struct.drm_open_hash* %0, %struct.drm_open_hash** %2, align 8
  %3 = load %struct.drm_open_hash*, %struct.drm_open_hash** %2, align 8
  %4 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = sext i32 %8 to i64
  %10 = udiv i64 %9, 4
  %11 = load %struct.drm_open_hash*, %struct.drm_open_hash** %2, align 8
  %12 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = lshr i64 %10, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %7
  %18 = load %struct.drm_open_hash*, %struct.drm_open_hash** %2, align 8
  %19 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @kfree(i32* %20)
  br label %27

22:                                               ; preds = %7
  %23 = load %struct.drm_open_hash*, %struct.drm_open_hash** %2, align 8
  %24 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @vfree(i32* %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.drm_open_hash*, %struct.drm_open_hash** %2, align 8
  %29 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
