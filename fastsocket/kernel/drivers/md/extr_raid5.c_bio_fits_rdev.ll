; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_bio_fits_rdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_bio_fits_rdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i32 }
%struct.request_queue = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*)* @bio_fits_rdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_fits_rdev(%struct.bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.request_queue*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  %5 = load %struct.bio*, %struct.bio** %3, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.request_queue* @bdev_get_queue(i32 %7)
  store %struct.request_queue* %8, %struct.request_queue** %4, align 8
  %9 = load %struct.bio*, %struct.bio** %3, align 8
  %10 = call i64 @bio_sectors(%struct.bio* %9)
  %11 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %12 = call i64 @queue_max_sectors(%struct.request_queue* %11)
  %13 = icmp sgt i64 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %17 = load %struct.bio*, %struct.bio** %3, align 8
  %18 = call i32 @blk_recount_segments(%struct.request_queue* %16, %struct.bio* %17)
  %19 = load %struct.bio*, %struct.bio** %3, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %23 = call i64 @queue_max_segments(%struct.request_queue* %22)
  %24 = icmp sgt i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %33

26:                                               ; preds = %15
  %27 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %28 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %33

32:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %25, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i64 @queue_max_sectors(%struct.request_queue*) #1

declare dso_local i32 @blk_recount_segments(%struct.request_queue*, %struct.bio*) #1

declare dso_local i64 @queue_max_segments(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
