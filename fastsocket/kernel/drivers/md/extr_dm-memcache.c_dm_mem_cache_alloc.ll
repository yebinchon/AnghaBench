; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-memcache.c_dm_mem_cache_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-memcache.c_dm_mem_cache_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_mem_cache_object = type { i32 }
%struct.dm_mem_cache_client = type { i32, i32, i32, i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_mem_cache_object* @dm_mem_cache_alloc(%struct.dm_mem_cache_client* %0) #0 {
  %2 = alloca %struct.dm_mem_cache_object*, align 8
  %3 = alloca %struct.dm_mem_cache_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.dm_mem_cache_object*, align 8
  store %struct.dm_mem_cache_client* %0, %struct.dm_mem_cache_client** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %9 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %12 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = mul i32 %10, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %16 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_NOIO, align 4
  %19 = call %struct.dm_mem_cache_object* @mempool_alloc(i32 %17, i32 %18)
  store %struct.dm_mem_cache_object* %19, %struct.dm_mem_cache_object** %7, align 8
  %20 = load %struct.dm_mem_cache_object*, %struct.dm_mem_cache_object** %7, align 8
  %21 = icmp ne %struct.dm_mem_cache_object* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.dm_mem_cache_object* @ERR_PTR(i32 %24)
  store %struct.dm_mem_cache_object* %25, %struct.dm_mem_cache_object** %2, align 8
  br label %65

26:                                               ; preds = %1
  %27 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %28 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %27, i32 0, i32 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %33 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ugt i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %45

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %42 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sub i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %36
  %46 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %47 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %46, i32 0, i32 4
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.dm_mem_cache_object*, %struct.dm_mem_cache_object** %7, align 8
  %54 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %55 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mempool_free(%struct.dm_mem_cache_object* %53, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = call %struct.dm_mem_cache_object* @ERR_PTR(i32 %58)
  store %struct.dm_mem_cache_object* %59, %struct.dm_mem_cache_object** %2, align 8
  br label %65

60:                                               ; preds = %45
  %61 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %62 = load %struct.dm_mem_cache_object*, %struct.dm_mem_cache_object** %7, align 8
  %63 = call i32 @alloc_chunks(%struct.dm_mem_cache_client* %61, %struct.dm_mem_cache_object* %62)
  %64 = load %struct.dm_mem_cache_object*, %struct.dm_mem_cache_object** %7, align 8
  store %struct.dm_mem_cache_object* %64, %struct.dm_mem_cache_object** %2, align 8
  br label %65

65:                                               ; preds = %60, %52, %22
  %66 = load %struct.dm_mem_cache_object*, %struct.dm_mem_cache_object** %2, align 8
  ret %struct.dm_mem_cache_object* %66
}

declare dso_local %struct.dm_mem_cache_object* @mempool_alloc(i32, i32) #1

declare dso_local %struct.dm_mem_cache_object* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mempool_free(%struct.dm_mem_cache_object*, i32) #1

declare dso_local i32 @alloc_chunks(%struct.dm_mem_cache_client*, %struct.dm_mem_cache_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
