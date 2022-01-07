; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.stripe_c* }
%struct.stripe_c = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bvec_merge_data = type { i64, i32 }
%struct.bio_vec = type { i32 }
%struct.request_queue = type { i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)* }
%struct.bvec_merge_data.0 = type opaque
%struct.bio_vec.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bvec_merge_data*, %struct.bio_vec*, i32)* @stripe_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_merge(%struct.dm_target* %0, %struct.bvec_merge_data* %1, %struct.bio_vec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca %struct.bvec_merge_data*, align 8
  %8 = alloca %struct.bio_vec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stripe_c*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.request_queue*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store %struct.bvec_merge_data* %1, %struct.bvec_merge_data** %7, align 8
  store %struct.bio_vec* %2, %struct.bio_vec** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %15 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %14, i32 0, i32 0
  %16 = load %struct.stripe_c*, %struct.stripe_c** %15, align 8
  store %struct.stripe_c* %16, %struct.stripe_c** %10, align 8
  %17 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %7, align 8
  %18 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.stripe_c*, %struct.stripe_c** %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @stripe_map_sector(%struct.stripe_c* %20, i64 %21, i64* %12, i64* %11)
  %23 = load %struct.stripe_c*, %struct.stripe_c** %10, align 8
  %24 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.request_queue* @bdev_get_queue(i32 %31)
  store %struct.request_queue* %32, %struct.request_queue** %13, align 8
  %33 = load %struct.request_queue*, %struct.request_queue** %13, align 8
  %34 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %33, i32 0, i32 0
  %35 = load i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)*, i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)** %34, align 8
  %36 = icmp ne i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %5, align 4
  br label %73

39:                                               ; preds = %4
  %40 = load %struct.stripe_c*, %struct.stripe_c** %10, align 8
  %41 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %7, align 8
  %50 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.stripe_c*, %struct.stripe_c** %10, align 8
  %52 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add nsw i64 %57, %58
  %60 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %7, align 8
  %61 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.request_queue*, %struct.request_queue** %13, align 8
  %64 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %63, i32 0, i32 0
  %65 = load i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)*, i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)** %64, align 8
  %66 = load %struct.request_queue*, %struct.request_queue** %13, align 8
  %67 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %7, align 8
  %68 = bitcast %struct.bvec_merge_data* %67 to %struct.bvec_merge_data.0*
  %69 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %70 = bitcast %struct.bio_vec* %69 to %struct.bio_vec.1*
  %71 = call i32 %65(%struct.request_queue* %66, %struct.bvec_merge_data.0* %68, %struct.bio_vec.1* %70)
  %72 = call i32 @min(i32 %62, i32 %71)
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %39, %37
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @stripe_map_sector(%struct.stripe_c*, i64, i64*, i64*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
