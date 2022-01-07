; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_origin_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_origin_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_dev* }
%struct.dm_dev = type { i32 }
%struct.bvec_merge_data = type { i32 }
%struct.bio_vec = type { i32 }
%struct.request_queue = type { i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)* }
%struct.bvec_merge_data.0 = type opaque
%struct.bio_vec.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bvec_merge_data*, %struct.bio_vec*, i32)* @origin_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @origin_merge(%struct.dm_target* %0, %struct.bvec_merge_data* %1, %struct.bio_vec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca %struct.bvec_merge_data*, align 8
  %8 = alloca %struct.bio_vec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dm_dev*, align 8
  %11 = alloca %struct.request_queue*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store %struct.bvec_merge_data* %1, %struct.bvec_merge_data** %7, align 8
  store %struct.bio_vec* %2, %struct.bio_vec** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %13 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %12, i32 0, i32 0
  %14 = load %struct.dm_dev*, %struct.dm_dev** %13, align 8
  store %struct.dm_dev* %14, %struct.dm_dev** %10, align 8
  %15 = load %struct.dm_dev*, %struct.dm_dev** %10, align 8
  %16 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.request_queue* @bdev_get_queue(i32 %17)
  store %struct.request_queue* %18, %struct.request_queue** %11, align 8
  %19 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %20 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %19, i32 0, i32 0
  %21 = load i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)*, i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)** %20, align 8
  %22 = icmp ne i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %5, align 4
  br label %42

25:                                               ; preds = %4
  %26 = load %struct.dm_dev*, %struct.dm_dev** %10, align 8
  %27 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %7, align 8
  %30 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %33 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %32, i32 0, i32 0
  %34 = load i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)*, i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)** %33, align 8
  %35 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %36 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %7, align 8
  %37 = bitcast %struct.bvec_merge_data* %36 to %struct.bvec_merge_data.0*
  %38 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %39 = bitcast %struct.bio_vec* %38 to %struct.bio_vec.1*
  %40 = call i32 %34(%struct.request_queue* %35, %struct.bvec_merge_data.0* %37, %struct.bio_vec.1* %39)
  %41 = call i32 @min(i32 %31, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %25, %23
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
