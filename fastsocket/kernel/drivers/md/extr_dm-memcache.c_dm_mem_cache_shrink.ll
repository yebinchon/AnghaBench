; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-memcache.c_dm_mem_cache_shrink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-memcache.c_dm_mem_cache_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_mem_cache_client = type { i32, i32, i32, i32, i32, i32, i32, %struct.page_list* }
%struct.page_list = type { %struct.page_list* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_mem_cache_shrink(%struct.dm_mem_cache_client* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_mem_cache_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.page_list*, align 8
  %10 = alloca %struct.page_list*, align 8
  %11 = alloca %struct.page_list*, align 8
  store %struct.dm_mem_cache_client* %0, %struct.dm_mem_cache_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %14 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul i32 %12, %15
  %17 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %18 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %7, align 4
  store %struct.page_list* null, %struct.page_list** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %28 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %27, i32 0, i32 6
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %32 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %31, i32 0, i32 7
  %33 = load %struct.page_list*, %struct.page_list** %32, align 8
  store %struct.page_list* %33, %struct.page_list** %11, align 8
  store %struct.page_list* %33, %struct.page_list** %10, align 8
  br label %34

34:                                               ; preds = %45, %2
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %7, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.page_list*, %struct.page_list** %11, align 8
  %40 = getelementptr inbounds %struct.page_list, %struct.page_list* %39, i32 0, i32 0
  %41 = load %struct.page_list*, %struct.page_list** %40, align 8
  %42 = icmp ne %struct.page_list* %41, null
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi i1 [ false, %34 ], [ %42, %38 ]
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = load %struct.page_list*, %struct.page_list** %11, align 8
  store %struct.page_list* %46, %struct.page_list** %9, align 8
  %47 = load %struct.page_list*, %struct.page_list** %11, align 8
  %48 = getelementptr inbounds %struct.page_list, %struct.page_list* %47, i32 0, i32 0
  %49 = load %struct.page_list*, %struct.page_list** %48, align 8
  store %struct.page_list* %49, %struct.page_list** %11, align 8
  br label %34

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %78

57:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  %58 = load %struct.page_list*, %struct.page_list** %11, align 8
  %59 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %60 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %59, i32 0, i32 7
  store %struct.page_list* %58, %struct.page_list** %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %63 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sub i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %68 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = sub i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %73 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = sub i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.page_list*, %struct.page_list** %9, align 8
  %77 = getelementptr inbounds %struct.page_list, %struct.page_list* %76, i32 0, i32 0
  store %struct.page_list* null, %struct.page_list** %77, align 8
  br label %78

78:                                               ; preds = %57, %54
  %79 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %80 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %79, i32 0, i32 6
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %78
  %86 = load %struct.page_list*, %struct.page_list** %10, align 8
  %87 = call i32 @free_cache_pages(%struct.page_list* %86)
  %88 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %89 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.dm_mem_cache_client*, %struct.dm_mem_cache_client** %3, align 8
  %92 = getelementptr inbounds %struct.dm_mem_cache_client, %struct.dm_mem_cache_client* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @GFP_NOIO, align 4
  %95 = call i32 @mempool_resize(i32 %90, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %85, %78
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_cache_pages(%struct.page_list*) #1

declare dso_local i32 @mempool_resize(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
