; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_raid1_mergeable_bvec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_raid1_mergeable_bvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)*, %struct.mddev* }
%struct.bvec_merge_data = type opaque
%struct.bio_vec = type opaque
%struct.mddev = type { i64, %struct.r1conf* }
%struct.r1conf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bvec_merge_data.0 = type { i32, i64 }
%struct.bio_vec.1 = type { i32 }
%struct.md_rdev = type { i32, i64, i32 }

@Faulty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)* @raid1_mergeable_bvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid1_mergeable_bvec(%struct.request_queue* %0, %struct.bvec_merge_data.0* %1, %struct.bio_vec.1* %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bvec_merge_data.0*, align 8
  %6 = alloca %struct.bio_vec.1*, align 8
  %7 = alloca %struct.mddev*, align 8
  %8 = alloca %struct.r1conf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.md_rdev*, align 8
  %13 = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bvec_merge_data.0* %1, %struct.bvec_merge_data.0** %5, align 8
  store %struct.bio_vec.1* %2, %struct.bio_vec.1** %6, align 8
  %14 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %15 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %14, i32 0, i32 1
  %16 = load %struct.mddev*, %struct.mddev** %15, align 8
  store %struct.mddev* %16, %struct.mddev** %7, align 8
  %17 = load %struct.mddev*, %struct.mddev** %7, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 1
  %19 = load %struct.r1conf*, %struct.r1conf** %18, align 8
  store %struct.r1conf* %19, %struct.r1conf** %8, align 8
  %20 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %5, align 8
  %21 = getelementptr inbounds %struct.bvec_merge_data.0, %struct.bvec_merge_data.0* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %5, align 8
  %24 = getelementptr inbounds %struct.bvec_merge_data.0, %struct.bvec_merge_data.0* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @get_start_sect(i32 %25)
  %27 = add nsw i64 %22, %26
  store i64 %27, i64* %9, align 8
  %28 = load %struct.bio_vec.1*, %struct.bio_vec.1** %6, align 8
  %29 = getelementptr inbounds %struct.bio_vec.1, %struct.bio_vec.1* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.mddev*, %struct.mddev** %7, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %102

35:                                               ; preds = %3
  %36 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %97, %35
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %40 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 2
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %100

44:                                               ; preds = %37
  %45 = load %struct.r1conf*, %struct.r1conf** %8, align 8
  %46 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.md_rdev* @rcu_dereference(i32 %52)
  store %struct.md_rdev* %53, %struct.md_rdev** %12, align 8
  %54 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %55 = icmp ne %struct.md_rdev* %54, null
  br i1 %55, label %56, label %96

56:                                               ; preds = %44
  %57 = load i32, i32* @Faulty, align 4
  %58 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %59 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %58, i32 0, i32 2
  %60 = call i32 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %96, label %62

62:                                               ; preds = %56
  %63 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %64 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.request_queue* @bdev_get_queue(i32 %65)
  store %struct.request_queue* %66, %struct.request_queue** %13, align 8
  %67 = load %struct.request_queue*, %struct.request_queue** %13, align 8
  %68 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %67, i32 0, i32 0
  %69 = load i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)*, i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)** %68, align 8
  %70 = icmp ne i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)* %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %62
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %74 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %5, align 8
  %78 = getelementptr inbounds %struct.bvec_merge_data.0, %struct.bvec_merge_data.0* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %80 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %5, align 8
  %83 = getelementptr inbounds %struct.bvec_merge_data.0, %struct.bvec_merge_data.0* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.request_queue*, %struct.request_queue** %13, align 8
  %86 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %85, i32 0, i32 0
  %87 = load i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)*, i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)** %86, align 8
  %88 = load %struct.request_queue*, %struct.request_queue** %13, align 8
  %89 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %5, align 8
  %90 = bitcast %struct.bvec_merge_data.0* %89 to %struct.bvec_merge_data*
  %91 = load %struct.bio_vec.1*, %struct.bio_vec.1** %6, align 8
  %92 = bitcast %struct.bio_vec.1* %91 to %struct.bio_vec*
  %93 = call i32 %87(%struct.request_queue* %88, %struct.bvec_merge_data* %90, %struct.bio_vec* %92)
  %94 = call i32 @min(i32 %84, i32 %93)
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %71, %62
  br label %96

96:                                               ; preds = %95, %56, %44
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %37

100:                                              ; preds = %37
  %101 = call i32 (...) @rcu_read_unlock()
  br label %102

102:                                              ; preds = %100, %3
  %103 = load i32, i32* %10, align 4
  ret i32 %103
}

declare dso_local i64 @get_start_sect(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
