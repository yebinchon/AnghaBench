; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { i32 }
%struct.stripe_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dm_mem_cache_client = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SC_GROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stripe* (%struct.stripe_cache*, %struct.dm_mem_cache_client*, i32)* @stripe_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stripe* @stripe_alloc(%struct.stripe_cache* %0, %struct.dm_mem_cache_client* %1, i32 %2) #0 {
  %4 = alloca %struct.stripe*, align 8
  %5 = alloca %struct.stripe_cache*, align 8
  %6 = alloca %struct.dm_mem_cache_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stripe*, align 8
  store %struct.stripe_cache* %0, %struct.stripe_cache** %5, align 8
  store %struct.dm_mem_cache_client* %1, %struct.dm_mem_cache_client** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.stripe_cache*, %struct.stripe_cache** %5, align 8
  %11 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.stripe* @kmem_cache_zalloc(i32 %13, i32 %14)
  store %struct.stripe* %15, %struct.stripe** %9, align 8
  %16 = load %struct.stripe*, %struct.stripe** %9, align 8
  %17 = icmp ne %struct.stripe* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SC_GROW, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %6, align 8
  %24 = call i32 @dm_mem_cache_grow(%struct.dm_mem_cache_client* %23, i32 1)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %54

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %18
  %30 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %6, align 8
  %31 = call i32 @dm_mem_cache_alloc(%struct.dm_mem_cache_client* %30)
  %32 = load %struct.stripe*, %struct.stripe** %9, align 8
  %33 = getelementptr inbounds %struct.stripe, %struct.stripe* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.stripe*, %struct.stripe** %9, align 8
  %35 = getelementptr inbounds %struct.stripe, %struct.stripe* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %46

40:                                               ; preds = %29
  %41 = load %struct.stripe_cache*, %struct.stripe_cache** %5, align 8
  %42 = load %struct.stripe*, %struct.stripe** %9, align 8
  %43 = call i32 @stripe_init(%struct.stripe_cache* %41, %struct.stripe* %42)
  br label %44

44:                                               ; preds = %40, %3
  %45 = load %struct.stripe*, %struct.stripe** %9, align 8
  store %struct.stripe* %45, %struct.stripe** %4, align 8
  br label %61

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SC_GROW, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %6, align 8
  %52 = call i32 @dm_mem_cache_shrink(%struct.dm_mem_cache_client* %51, i32 1)
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %27
  %55 = load %struct.stripe_cache*, %struct.stripe_cache** %5, align 8
  %56 = getelementptr inbounds %struct.stripe_cache, %struct.stripe_cache* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.stripe*, %struct.stripe** %9, align 8
  %60 = call i32 @kmem_cache_free(i32 %58, %struct.stripe* %59)
  store %struct.stripe* null, %struct.stripe** %4, align 8
  br label %61

61:                                               ; preds = %54, %44
  %62 = load %struct.stripe*, %struct.stripe** %4, align 8
  ret %struct.stripe* %62
}

declare dso_local %struct.stripe* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @dm_mem_cache_grow(%struct.dm_mem_cache_client*, i32) #1

declare dso_local i32 @dm_mem_cache_alloc(%struct.dm_mem_cache_client*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @stripe_init(%struct.stripe_cache*, %struct.stripe*) #1

declare dso_local i32 @dm_mem_cache_shrink(%struct.dm_mem_cache_client*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.stripe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
