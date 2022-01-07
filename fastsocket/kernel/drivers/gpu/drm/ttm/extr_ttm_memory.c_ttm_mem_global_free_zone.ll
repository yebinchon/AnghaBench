; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_global_free_zone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_global_free_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, i32, %struct.ttm_mem_zone** }
%struct.ttm_mem_zone = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_mem_global*, %struct.ttm_mem_zone*, i64)* @ttm_mem_global_free_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_mem_global_free_zone(%struct.ttm_mem_global* %0, %struct.ttm_mem_zone* %1, i64 %2) #0 {
  %4 = alloca %struct.ttm_mem_global*, align 8
  %5 = alloca %struct.ttm_mem_zone*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_mem_zone*, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %4, align 8
  store %struct.ttm_mem_zone* %1, %struct.ttm_mem_zone** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %10 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %41, %3
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %15 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %20 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %19, i32 0, i32 2
  %21 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %21, i64 %23
  %25 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %24, align 8
  store %struct.ttm_mem_zone* %25, %struct.ttm_mem_zone** %8, align 8
  %26 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %27 = icmp ne %struct.ttm_mem_zone* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %8, align 8
  %30 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %5, align 8
  %31 = icmp ne %struct.ttm_mem_zone* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %41

33:                                               ; preds = %28, %18
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %8, align 8
  %36 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  br label %41

41:                                               ; preds = %33, %32
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %12

44:                                               ; preds = %12
  %45 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %46 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
