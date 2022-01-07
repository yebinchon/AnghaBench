; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_alloc_buffer_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_alloc_buffer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dm_bufio_client = type { i64, i32 }

@DM_BUFIO_BLOCK_SIZE_SLAB_LIMIT = common dso_local global i64 0, align 8
@DATA_MODE_SLAB = common dso_local global i32 0, align 4
@DM_BUFIO_BLOCK_SIZE_GFP_LIMIT = common dso_local global i64 0, align 8
@__GFP_NORETRY = common dso_local global i32 0, align 4
@DATA_MODE_GET_FREE_PAGES = common dso_local global i32 0, align 4
@DATA_MODE_VMALLOC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dm_bufio_client*, i32, i32*)* @alloc_buffer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_buffer_data(%struct.dm_bufio_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dm_bufio_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %11 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DM_BUFIO_BLOCK_SIZE_SLAB_LIMIT, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32, i32* @DATA_MODE_SLAB, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %19 = call i32 @DM_BUFIO_CACHE(%struct.dm_bufio_client* %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @kmem_cache_alloc(i32 %19, i32 %20)
  store i8* %21, i8** %4, align 8
  br label %86

22:                                               ; preds = %3
  %23 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %24 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DM_BUFIO_BLOCK_SIZE_GFP_LIMIT, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @__GFP_NORETRY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i32, i32* @DATA_MODE_GET_FREE_PAGES, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %38 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @__get_free_pages(i32 %36, i32 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %4, align 8
  br label %86

42:                                               ; preds = %28, %22
  %43 = load i32, i32* @DATA_MODE_VMALLOC, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @__GFP_NORETRY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PF_MEMALLOC, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @PF_MEMALLOC, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %49, %42
  %61 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %62 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @__GFP_HIGHMEM, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @PAGE_KERNEL, align 4
  %68 = call i8* @__vmalloc(i64 %63, i32 %66, i32 %67)
  store i8* %68, i8** %9, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @__GFP_NORETRY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %60
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PF_MEMALLOC, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %73, %60
  %85 = load i8*, i8** %9, align 8
  store i8* %85, i8** %4, align 8
  br label %86

86:                                               ; preds = %84, %33, %15
  %87 = load i8*, i8** %4, align 8
  ret i8* %87
}

declare dso_local i8* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @DM_BUFIO_CACHE(%struct.dm_bufio_client*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i8* @__vmalloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
