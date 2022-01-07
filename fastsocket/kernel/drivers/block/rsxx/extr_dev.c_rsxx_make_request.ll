; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_rsxx_make_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_rsxx_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.rsxx_cardinfo* }
%struct.rsxx_cardinfo = type { i32, i32, i32 }
%struct.bio = type { i64, i32 }
%struct.rsxx_bio_meta = type { i32, i32, i32, %struct.bio* }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"size zero BIO!\0A\00", align 1
@bio_meta_pool = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"BIO[%c]: meta: %p addr8: x%llx size: %d\0A\00", align 1
@bio_dma_done_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*)* @rsxx_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsxx_make_request(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.rsxx_cardinfo*, align 8
  %7 = alloca %struct.rsxx_bio_meta*, align 8
  %8 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %10, align 8
  store %struct.rsxx_cardinfo* %11, %struct.rsxx_cardinfo** %6, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = call i32 (...) @might_sleep()
  %15 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %16 = icmp ne %struct.rsxx_cardinfo* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %126

18:                                               ; preds = %2
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = ashr i32 %24, 9
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %21, %26
  %28 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %29 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @get_capacity(i32 %30)
  %32 = icmp sgt i64 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %126

34:                                               ; preds = %18
  %35 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %36 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EFAULT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %126

43:                                               ; preds = %34
  %44 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %45 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %126

52:                                               ; preds = %43
  %53 = load %struct.bio*, %struct.bio** %5, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %59 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %58)
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %126

61:                                               ; preds = %52
  %62 = load i32, i32* @bio_meta_pool, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.rsxx_bio_meta* @kmem_cache_alloc(i32 %62, i32 %63)
  store %struct.rsxx_bio_meta* %64, %struct.rsxx_bio_meta** %7, align 8
  %65 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %66 = icmp ne %struct.rsxx_bio_meta* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %126

70:                                               ; preds = %61
  %71 = load %struct.bio*, %struct.bio** %5, align 8
  %72 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %73 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %72, i32 0, i32 3
  store %struct.bio* %71, %struct.bio** %73, align 8
  %74 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %75 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %74, i32 0, i32 2
  %76 = call i32 @atomic_set(i32* %75, i32 0)
  %77 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %78 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %77, i32 0, i32 0
  %79 = call i32 @atomic_set(i32* %78, i32 0)
  %80 = load i32, i32* @jiffies, align 4
  %81 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %82 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %84 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %70
  %89 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %90 = load %struct.bio*, %struct.bio** %5, align 8
  %91 = call i32 @disk_stats_start(%struct.rsxx_cardinfo* %89, %struct.bio* %90)
  br label %92

92:                                               ; preds = %88, %70
  %93 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %94 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %93)
  %95 = load %struct.bio*, %struct.bio** %5, align 8
  %96 = call i64 @bio_data_dir(%struct.bio* %95)
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 87, i32 82
  %100 = trunc i32 %99 to i8
  %101 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %102 = load %struct.bio*, %struct.bio** %5, align 8
  %103 = getelementptr inbounds %struct.bio, %struct.bio* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = shl i32 %105, 9
  %107 = load %struct.bio*, %struct.bio** %5, align 8
  %108 = getelementptr inbounds %struct.bio, %struct.bio* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dev_dbg(i32 %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8 signext %100, %struct.rsxx_bio_meta* %101, i32 %106, i32 %109)
  %111 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %112 = load %struct.bio*, %struct.bio** %5, align 8
  %113 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %114 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %113, i32 0, i32 0
  %115 = load i32, i32* @bio_dma_done_cb, align 4
  %116 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %117 = call i32 @rsxx_dma_queue_bio(%struct.rsxx_cardinfo* %111, %struct.bio* %112, i32* %114, i32 %115, %struct.rsxx_bio_meta* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %92
  br label %122

121:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %130

122:                                              ; preds = %120
  %123 = load i32, i32* @bio_meta_pool, align 4
  %124 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %125 = call i32 @kmem_cache_free(i32 %123, %struct.rsxx_bio_meta* %124)
  br label %126

126:                                              ; preds = %122, %67, %57, %49, %40, %33, %17
  %127 = load %struct.bio*, %struct.bio** %5, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @bio_endio(%struct.bio* %127, i32 %128)
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %126, %121
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @get_capacity(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local %struct.rsxx_bio_meta* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @disk_stats_start(%struct.rsxx_cardinfo*, %struct.bio*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 signext, %struct.rsxx_bio_meta*, i32, i32) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @rsxx_dma_queue_bio(%struct.rsxx_cardinfo*, %struct.bio*, i32*, i32, %struct.rsxx_bio_meta*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.rsxx_bio_meta*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
