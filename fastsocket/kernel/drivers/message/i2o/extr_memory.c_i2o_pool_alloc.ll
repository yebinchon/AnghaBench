; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_memory.c_i2o_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_memory.c_i2o_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_pool = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2o_pool_alloc(%struct.i2o_pool* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2o_pool*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i2o_pool* %0, %struct.i2o_pool** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = add nsw i64 %11, 1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @kmalloc(i64 %12, i32 %13)
  %15 = load %struct.i2o_pool*, %struct.i2o_pool** %6, align 8
  %16 = getelementptr inbounds %struct.i2o_pool, %struct.i2o_pool* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.i2o_pool*, %struct.i2o_pool** %6, align 8
  %18 = getelementptr inbounds %struct.i2o_pool, %struct.i2o_pool* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %65

22:                                               ; preds = %4
  %23 = load %struct.i2o_pool*, %struct.i2o_pool** %6, align 8
  %24 = getelementptr inbounds %struct.i2o_pool, %struct.i2o_pool* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @strcpy(i32 %25, i8* %26)
  %28 = load %struct.i2o_pool*, %struct.i2o_pool** %6, align 8
  %29 = getelementptr inbounds %struct.i2o_pool, %struct.i2o_pool* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %33 = call i32 @kmem_cache_create(i32 %30, i64 %31, i32 0, i32 %32, i32* null)
  %34 = load %struct.i2o_pool*, %struct.i2o_pool** %6, align 8
  %35 = getelementptr inbounds %struct.i2o_pool, %struct.i2o_pool* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.i2o_pool*, %struct.i2o_pool** %6, align 8
  %37 = getelementptr inbounds %struct.i2o_pool, %struct.i2o_pool* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %22
  br label %60

41:                                               ; preds = %22
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.i2o_pool*, %struct.i2o_pool** %6, align 8
  %44 = getelementptr inbounds %struct.i2o_pool, %struct.i2o_pool* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mempool_create_slab_pool(i32 %42, i32 %45)
  %47 = load %struct.i2o_pool*, %struct.i2o_pool** %6, align 8
  %48 = getelementptr inbounds %struct.i2o_pool, %struct.i2o_pool* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.i2o_pool*, %struct.i2o_pool** %6, align 8
  %50 = getelementptr inbounds %struct.i2o_pool, %struct.i2o_pool* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %55

54:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %68

55:                                               ; preds = %53
  %56 = load %struct.i2o_pool*, %struct.i2o_pool** %6, align 8
  %57 = getelementptr inbounds %struct.i2o_pool, %struct.i2o_pool* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kmem_cache_destroy(i32 %58)
  br label %60

60:                                               ; preds = %55, %40
  %61 = load %struct.i2o_pool*, %struct.i2o_pool** %6, align 8
  %62 = getelementptr inbounds %struct.i2o_pool, %struct.i2o_pool* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @kfree(i32 %63)
  br label %65

65:                                               ; preds = %60, %21
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %54
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @kmem_cache_create(i32, i64, i32, i32, i32*) #1

declare dso_local i32 @mempool_create_slab_pool(i32, i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
