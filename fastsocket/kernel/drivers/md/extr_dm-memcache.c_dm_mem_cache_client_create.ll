; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-memcache.c_dm_mem_cache_client_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-memcache.c_dm_mem_cache_client_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_mem_cache_client = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_mem_cache_client* @dm_mem_cache_client_create(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm_mem_cache_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_mem_cache_client*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = mul i32 %10, %11
  %13 = load i32, i32* %7, align 4
  %14 = mul i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.dm_mem_cache_client* @kzalloc(i32 32, i32 %20)
  store %struct.dm_mem_cache_client* %21, %struct.dm_mem_cache_client** %9, align 8
  %22 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %9, align 8
  %23 = icmp ne %struct.dm_mem_cache_client* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.dm_mem_cache_client* @ERR_PTR(i32 %26)
  store %struct.dm_mem_cache_client* %27, %struct.dm_mem_cache_client** %4, align 8
  br label %82

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32 @mempool_create_kmalloc_pool(i32 %29, i32 %33)
  %35 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %9, align 8
  %36 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %9, align 8
  %38 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %28
  br label %76

42:                                               ; preds = %28
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @alloc_cache_pages(i32 %43)
  %45 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %9, align 8
  %46 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %9, align 8
  %48 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %71

52:                                               ; preds = %42
  %53 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %9, align 8
  %54 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %53, i32 0, i32 6
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %9, align 8
  %58 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %9, align 8
  %61 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %9, align 8
  %64 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %9, align 8
  %67 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %9, align 8
  %69 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %68, i32 0, i32 3
  store i32 %65, i32* %69, align 4
  %70 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %9, align 8
  store %struct.dm_mem_cache_client* %70, %struct.dm_mem_cache_client** %4, align 8
  br label %82

71:                                               ; preds = %51
  %72 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %9, align 8
  %73 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mempool_destroy(i32 %74)
  br label %76

76:                                               ; preds = %71, %41
  %77 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %9, align 8
  %78 = call i32 @kfree(%struct.dm_mem_cache_client* %77)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  %81 = call %struct.dm_mem_cache_client* @ERR_PTR(i32 %80)
  store %struct.dm_mem_cache_client* %81, %struct.dm_mem_cache_client** %4, align 8
  br label %82

82:                                               ; preds = %76, %52, %24
  %83 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %4, align 8
  ret %struct.dm_mem_cache_client* %83
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.dm_mem_cache_client* @kzalloc(i32, i32) #1

declare dso_local %struct.dm_mem_cache_client* @ERR_PTR(i32) #1

declare dso_local i32 @mempool_create_kmalloc_pool(i32, i32) #1

declare dso_local i32 @alloc_cache_pages(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mempool_destroy(i32) #1

declare dso_local i32 @kfree(%struct.dm_mem_cache_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
