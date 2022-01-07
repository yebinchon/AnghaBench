; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_linear.c_linear_mergeable_bvec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_linear.c_linear_mergeable_bvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)*, %struct.mddev* }
%struct.bvec_merge_data = type opaque
%struct.bio_vec = type opaque
%struct.mddev = type { i32 }
%struct.bvec_merge_data.0 = type { i32, i64, i32 }
%struct.bio_vec.1 = type { i32 }
%struct.dev_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)* @linear_mergeable_bvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linear_mergeable_bvec(%struct.request_queue* %0, %struct.bvec_merge_data.0* %1, %struct.bio_vec.1* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.bvec_merge_data.0*, align 8
  %7 = alloca %struct.bio_vec.1*, align 8
  %8 = alloca %struct.mddev*, align 8
  %9 = alloca %struct.dev_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.bvec_merge_data.0* %1, %struct.bvec_merge_data.0** %6, align 8
  store %struct.bio_vec.1* %2, %struct.bio_vec.1** %7, align 8
  %15 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %15, i32 0, i32 1
  %17 = load %struct.mddev*, %struct.mddev** %16, align 8
  store %struct.mddev* %17, %struct.mddev** %8, align 8
  %18 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %6, align 8
  %19 = getelementptr inbounds %struct.bvec_merge_data.0, %struct.bvec_merge_data.0* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 9
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %11, align 8
  %23 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %6, align 8
  %24 = getelementptr inbounds %struct.bvec_merge_data.0, %struct.bvec_merge_data.0* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %6, align 8
  %27 = getelementptr inbounds %struct.bvec_merge_data.0, %struct.bvec_merge_data.0* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @get_start_sect(i32 %28)
  %30 = add i64 %25, %29
  store i64 %30, i64* %12, align 8
  %31 = load %struct.bio_vec.1*, %struct.bio_vec.1** %7, align 8
  %32 = getelementptr inbounds %struct.bio_vec.1, %struct.bio_vec.1* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = call i32 (...) @rcu_read_lock()
  %35 = load %struct.mddev*, %struct.mddev** %8, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call %struct.dev_info* @which_dev(%struct.mddev* %35, i64 %36)
  store %struct.dev_info* %37, %struct.dev_info** %9, align 8
  %38 = load %struct.dev_info*, %struct.dev_info** %9, align 8
  %39 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = sub i64 %40, %41
  store i64 %42, i64* %10, align 8
  %43 = load %struct.dev_info*, %struct.dev_info** %9, align 8
  %44 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.request_queue* @bdev_get_queue(i32 %47)
  store %struct.request_queue* %48, %struct.request_queue** %14, align 8
  %49 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  %50 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %49, i32 0, i32 0
  %51 = load i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)*, i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)** %50, align 8
  %52 = icmp ne i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)* %51, null
  br i1 %52, label %53, label %85

53:                                               ; preds = %3
  %54 = load %struct.dev_info*, %struct.dev_info** %9, align 8
  %55 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %6, align 8
  %60 = getelementptr inbounds %struct.bvec_merge_data.0, %struct.bvec_merge_data.0* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.dev_info*, %struct.dev_info** %9, align 8
  %62 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.dev_info*, %struct.dev_info** %9, align 8
  %65 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %63, %68
  %70 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %6, align 8
  %71 = getelementptr inbounds %struct.bvec_merge_data.0, %struct.bvec_merge_data.0* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  %76 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %75, i32 0, i32 0
  %77 = load i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)*, i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)** %76, align 8
  %78 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  %79 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %6, align 8
  %80 = bitcast %struct.bvec_merge_data.0* %79 to %struct.bvec_merge_data*
  %81 = load %struct.bio_vec.1*, %struct.bio_vec.1** %7, align 8
  %82 = bitcast %struct.bio_vec.1* %81 to %struct.bio_vec*
  %83 = call i32 %77(%struct.request_queue* %78, %struct.bvec_merge_data* %80, %struct.bio_vec* %82)
  %84 = call i32 @min(i32 %74, i32 %83)
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %53, %3
  %86 = call i32 (...) @rcu_read_unlock()
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i64 0, i64* %10, align 8
  br label %95

91:                                               ; preds = %85
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %10, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %91, %90
  %96 = load i64, i64* %10, align 8
  %97 = load i32, i32* @PAGE_SIZE, align 4
  %98 = ashr i32 %97, 9
  %99 = sext i32 %98 to i64
  %100 = icmp ule i64 %96, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i64, i64* %11, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %4, align 4
  br label %118

106:                                              ; preds = %101, %95
  %107 = load i64, i64* %10, align 8
  %108 = load i32, i32* %13, align 4
  %109 = ashr i32 %108, 9
  %110 = sext i32 %109 to i64
  %111 = icmp ugt i64 %107, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %4, align 4
  br label %118

114:                                              ; preds = %106
  %115 = load i64, i64* %10, align 8
  %116 = shl i64 %115, 9
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %114, %112, %104
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @get_start_sect(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.dev_info* @which_dev(%struct.mddev*, i64) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
