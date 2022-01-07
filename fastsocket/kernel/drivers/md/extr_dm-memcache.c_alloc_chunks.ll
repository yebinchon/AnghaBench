; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-memcache.c_alloc_chunks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-memcache.c_alloc_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_mem_cache_client = type { i32, i32, i32, %struct.page_list* }
%struct.page_list = type { %struct.page_list* }
%struct.dm_mem_cache_object = type { %struct.page_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_mem_cache_client*, %struct.dm_mem_cache_object*)* @alloc_chunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_chunks(%struct.dm_mem_cache_client* %0, %struct.dm_mem_cache_object* %1) #0 {
  %3 = alloca %struct.dm_mem_cache_client*, align 8
  %4 = alloca %struct.dm_mem_cache_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page_list*, align 8
  store %struct.dm_mem_cache_client* %0, %struct.dm_mem_cache_client** %3, align 8
  store %struct.dm_mem_cache_object* %1, %struct.dm_mem_cache_object** %4, align 8
  %9 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %10 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = call i32 (...) @local_irq_disable()
  br label %15

15:                                               ; preds = %66, %2
  %16 = load i32, i32* %5, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %5, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  %20 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %21 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.dm_mem_cache_object*, %struct.dm_mem_cache_object** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dm_mem_cache_object, %struct.dm_mem_cache_object* %23, i64 %25
  %27 = getelementptr inbounds %struct.dm_mem_cache_object, %struct.dm_mem_cache_object* %26, i32 0, i32 0
  store %struct.page_list* null, %struct.page_list** %27, align 8
  br label %28

28:                                               ; preds = %32, %19
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %28
  %33 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %34 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %33, i32 0, i32 2
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %37 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %36, i32 0, i32 3
  %38 = load %struct.page_list*, %struct.page_list** %37, align 8
  store %struct.page_list* %38, %struct.page_list** %8, align 8
  %39 = load %struct.page_list*, %struct.page_list** %8, align 8
  %40 = icmp ne %struct.page_list* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.page_list*, %struct.page_list** %8, align 8
  %45 = getelementptr inbounds %struct.page_list, %struct.page_list* %44, i32 0, i32 0
  %46 = load %struct.page_list*, %struct.page_list** %45, align 8
  %47 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %48 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %47, i32 0, i32 3
  store %struct.page_list* %46, %struct.page_list** %48, align 8
  %49 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %50 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.dm_mem_cache_object*, %struct.dm_mem_cache_object** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dm_mem_cache_object, %struct.dm_mem_cache_object* %52, i64 %54
  %56 = getelementptr inbounds %struct.dm_mem_cache_object, %struct.dm_mem_cache_object* %55, i32 0, i32 0
  %57 = load %struct.page_list*, %struct.page_list** %56, align 8
  %58 = load %struct.page_list*, %struct.page_list** %8, align 8
  %59 = getelementptr inbounds %struct.page_list, %struct.page_list* %58, i32 0, i32 0
  store %struct.page_list* %57, %struct.page_list** %59, align 8
  %60 = load %struct.page_list*, %struct.page_list** %8, align 8
  %61 = load %struct.dm_mem_cache_object*, %struct.dm_mem_cache_object** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.dm_mem_cache_object, %struct.dm_mem_cache_object* %61, i64 %63
  %65 = getelementptr inbounds %struct.dm_mem_cache_object, %struct.dm_mem_cache_object* %64, i32 0, i32 0
  store %struct.page_list* %60, %struct.page_list** %65, align 8
  br label %28

66:                                               ; preds = %28
  br label %15

67:                                               ; preds = %15
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @local_irq_restore(i64 %68)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
