; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.crypt_config* }
%struct.crypt_config = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bvec_merge_data = type { i64, i32 }
%struct.bio_vec = type { i32 }
%struct.request_queue = type { i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)* }
%struct.bvec_merge_data.0 = type opaque
%struct.bio_vec.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bvec_merge_data*, %struct.bio_vec*, i32)* @crypt_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_merge(%struct.dm_target* %0, %struct.bvec_merge_data* %1, %struct.bio_vec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca %struct.bvec_merge_data*, align 8
  %8 = alloca %struct.bio_vec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypt_config*, align 8
  %11 = alloca %struct.request_queue*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store %struct.bvec_merge_data* %1, %struct.bvec_merge_data** %7, align 8
  store %struct.bio_vec* %2, %struct.bio_vec** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %13 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %12, i32 0, i32 0
  %14 = load %struct.crypt_config*, %struct.crypt_config** %13, align 8
  store %struct.crypt_config* %14, %struct.crypt_config** %10, align 8
  %15 = load %struct.crypt_config*, %struct.crypt_config** %10, align 8
  %16 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.request_queue* @bdev_get_queue(i32 %19)
  store %struct.request_queue* %20, %struct.request_queue** %11, align 8
  %21 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %22 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %21, i32 0, i32 0
  %23 = load i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)*, i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)** %22, align 8
  %24 = icmp ne i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %5, align 4
  br label %57

27:                                               ; preds = %4
  %28 = load %struct.crypt_config*, %struct.crypt_config** %10, align 8
  %29 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %7, align 8
  %34 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.crypt_config*, %struct.crypt_config** %10, align 8
  %36 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %39 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %7, align 8
  %40 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @dm_target_offset(%struct.dm_target* %38, i64 %41)
  %43 = add nsw i64 %37, %42
  %44 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %7, align 8
  %45 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %48 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %47, i32 0, i32 0
  %49 = load i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)*, i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)** %48, align 8
  %50 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %51 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %7, align 8
  %52 = bitcast %struct.bvec_merge_data* %51 to %struct.bvec_merge_data.0*
  %53 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %54 = bitcast %struct.bio_vec* %53 to %struct.bio_vec.1*
  %55 = call i32 %49(%struct.request_queue* %50, %struct.bvec_merge_data.0* %52, %struct.bio_vec.1* %54)
  %56 = call i32 @min(i32 %46, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %27, %25
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i64 @dm_target_offset(%struct.dm_target*, i64) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
