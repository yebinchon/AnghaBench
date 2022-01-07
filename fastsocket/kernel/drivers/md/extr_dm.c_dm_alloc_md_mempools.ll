; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_alloc_md_mempools.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_alloc_md_mempools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_md_mempools = type { i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DM_TYPE_BIO_BASED = common dso_local global i32 0, align 4
@MIN_IOS = common dso_local global i32 0, align 4
@_io_cache = common dso_local global i32 0, align 4
@_rq_bio_info_cache = common dso_local global i32 0, align 4
@_tio_cache = common dso_local global i32 0, align 4
@_rq_tio_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_md_mempools* @dm_alloc_md_mempools(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.dm_md_mempools*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_md_mempools*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.dm_md_mempools* @kmalloc(i32 24, i32 %8)
  store %struct.dm_md_mempools* %9, %struct.dm_md_mempools** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @DM_TYPE_BIO_BASED, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @MIN_IOS, align 4
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i32 [ 16, %13 ], [ %15, %14 ]
  store i32 %17, i32* %7, align 4
  %18 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %6, align 8
  %19 = icmp ne %struct.dm_md_mempools* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store %struct.dm_md_mempools* null, %struct.dm_md_mempools** %3, align 8
  br label %104

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @DM_TYPE_BIO_BASED, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @MIN_IOS, align 4
  %27 = load i32, i32* @_io_cache, align 4
  %28 = call i8* @mempool_create_slab_pool(i32 %26, i32 %27)
  br label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @MIN_IOS, align 4
  %31 = load i32, i32* @_rq_bio_info_cache, align 4
  %32 = call i8* @mempool_create_slab_pool(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i8* [ %28, %25 ], [ %32, %29 ]
  %35 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %6, align 8
  %36 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %6, align 8
  %38 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %101

42:                                               ; preds = %33
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DM_TYPE_BIO_BASED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @MIN_IOS, align 4
  %48 = load i32, i32* @_tio_cache, align 4
  %49 = call i8* @mempool_create_slab_pool(i32 %47, i32 %48)
  br label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @MIN_IOS, align 4
  %52 = load i32, i32* @_rq_tio_cache, align 4
  %53 = call i8* @mempool_create_slab_pool(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i8* [ %49, %46 ], [ %53, %50 ]
  %56 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %6, align 8
  %57 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %6, align 8
  %59 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %96

63:                                               ; preds = %54
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @bioset_create(i32 %64, i32 0)
  %66 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %6, align 8
  %67 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %6, align 8
  %69 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  br label %91

73:                                               ; preds = %63
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %6, align 8
  %78 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @bioset_integrity_create(i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %86

84:                                               ; preds = %76, %73
  %85 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %6, align 8
  store %struct.dm_md_mempools* %85, %struct.dm_md_mempools** %3, align 8
  br label %104

86:                                               ; preds = %83
  %87 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %6, align 8
  %88 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @bioset_free(i32 %89)
  br label %91

91:                                               ; preds = %86, %72
  %92 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %6, align 8
  %93 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @mempool_destroy(i8* %94)
  br label %96

96:                                               ; preds = %91, %62
  %97 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %6, align 8
  %98 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @mempool_destroy(i8* %99)
  br label %101

101:                                              ; preds = %96, %41
  %102 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %6, align 8
  %103 = call i32 @kfree(%struct.dm_md_mempools* %102)
  store %struct.dm_md_mempools* null, %struct.dm_md_mempools** %3, align 8
  br label %104

104:                                              ; preds = %101, %84, %20
  %105 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %3, align 8
  ret %struct.dm_md_mempools* %105
}

declare dso_local %struct.dm_md_mempools* @kmalloc(i32, i32) #1

declare dso_local i8* @mempool_create_slab_pool(i32, i32) #1

declare dso_local i32 @bioset_create(i32, i32) #1

declare dso_local i64 @bioset_integrity_create(i32, i32) #1

declare dso_local i32 @bioset_free(i32) #1

declare dso_local i32 @mempool_destroy(i8*) #1

declare dso_local i32 @kfree(%struct.dm_md_mempools*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
