; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_bio_dma_done_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dev.c_bio_dma_done_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i64, i32 }
%struct.rsxx_bio_meta = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@bio_meta_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsxx_cardinfo*, i8*, i32)* @bio_dma_done_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bio_dma_done_cb(%struct.rsxx_cardinfo* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.rsxx_cardinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsxx_bio_meta*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.rsxx_bio_meta*
  store %struct.rsxx_bio_meta* %9, %struct.rsxx_bio_meta** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %14 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %13, i32 0, i32 0
  %15 = call i32 @atomic_set(i32* %14, i32 1)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %18 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %17, i32 0, i32 3
  %19 = call i64 @atomic_dec_and_test(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %16
  %22 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %23 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %28 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %33 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %34 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %37 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @disk_stats_complete(%struct.rsxx_cardinfo* %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %31, %26, %21
  %41 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %42 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %45 = getelementptr inbounds %struct.rsxx_bio_meta, %struct.rsxx_bio_meta* %44, i32 0, i32 0
  %46 = call i64 @atomic_read(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  br label %52

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  %54 = call i32 @bio_endio(i32 %43, i32 %53)
  %55 = load i32, i32* @bio_meta_pool, align 4
  %56 = load %struct.rsxx_bio_meta*, %struct.rsxx_bio_meta** %7, align 8
  %57 = call i32 @kmem_cache_free(i32 %55, %struct.rsxx_bio_meta* %56)
  br label %58

58:                                               ; preds = %52, %16
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @disk_stats_complete(%struct.rsxx_cardinfo*, i32, i32) #1

declare dso_local i32 @bio_endio(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.rsxx_bio_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
