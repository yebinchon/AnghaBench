; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-memcache.c_dm_mem_cache_grow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-memcache.c_dm_mem_cache_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_mem_cache_client = type { i32, i32, i32, i32, i32, i32, i32, %struct.page_list* }
%struct.page_list = type { %struct.page_list* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_mem_cache_grow(%struct.dm_mem_cache_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_mem_cache_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page_list*, align 8
  %8 = alloca %struct.page_list*, align 8
  store %struct.dm_mem_cache_client* %0, %struct.dm_mem_cache_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %4, align 8
  %11 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul i32 %9, %12
  %14 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %4, align 8
  %15 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.page_list* @alloc_cache_pages(i32 %23)
  store %struct.page_list* %24, %struct.page_list** %7, align 8
  %25 = load %struct.page_list*, %struct.page_list** %7, align 8
  %26 = icmp ne %struct.page_list* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %79

30:                                               ; preds = %2
  %31 = load %struct.page_list*, %struct.page_list** %7, align 8
  store %struct.page_list* %31, %struct.page_list** %8, align 8
  br label %32

32:                                               ; preds = %37, %30
  %33 = load %struct.page_list*, %struct.page_list** %8, align 8
  %34 = getelementptr inbounds %struct.page_list, %struct.page_list* %33, i32 0, i32 0
  %35 = load %struct.page_list*, %struct.page_list** %34, align 8
  %36 = icmp ne %struct.page_list* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.page_list*, %struct.page_list** %8, align 8
  %39 = getelementptr inbounds %struct.page_list, %struct.page_list* %38, i32 0, i32 0
  %40 = load %struct.page_list*, %struct.page_list** %39, align 8
  store %struct.page_list* %40, %struct.page_list** %8, align 8
  br label %32

41:                                               ; preds = %32
  %42 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %4, align 8
  %43 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %42, i32 0, i32 6
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %4, align 8
  %46 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %45, i32 0, i32 7
  %47 = load %struct.page_list*, %struct.page_list** %46, align 8
  %48 = load %struct.page_list*, %struct.page_list** %8, align 8
  %49 = getelementptr inbounds %struct.page_list, %struct.page_list* %48, i32 0, i32 0
  store %struct.page_list* %47, %struct.page_list** %49, align 8
  %50 = load %struct.page_list*, %struct.page_list** %7, align 8
  %51 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %4, align 8
  %52 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %51, i32 0, i32 7
  store %struct.page_list* %50, %struct.page_list** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %4, align 8
  %55 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %4, align 8
  %60 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %4, align 8
  %65 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = add i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %4, align 8
  %69 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %68, i32 0, i32 6
  %70 = call i32 @spin_unlock_irq(i32* %69)
  %71 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %4, align 8
  %72 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %4, align 8
  %75 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @GFP_NOIO, align 4
  %78 = call i32 @mempool_resize(i32 %73, i32 %76, i32 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %41, %27
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page_list* @alloc_cache_pages(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mempool_resize(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
