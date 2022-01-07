; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_mergeable_bvec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_mergeable_bvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.mddev* }
%struct.mddev = type { i32, i32 }
%struct.bvec_merge_data = type { i32, i32, i32, i32 }
%struct.bio_vec = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)* @raid5_mergeable_bvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid5_mergeable_bvec(%struct.request_queue* %0, %struct.bvec_merge_data* %1, %struct.bio_vec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.bvec_merge_data*, align 8
  %7 = alloca %struct.bio_vec*, align 8
  %8 = alloca %struct.mddev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.bvec_merge_data* %1, %struct.bvec_merge_data** %6, align 8
  store %struct.bio_vec* %2, %struct.bio_vec** %7, align 8
  %13 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 0
  %15 = load %struct.mddev*, %struct.mddev** %14, align 8
  store %struct.mddev* %15, %struct.mddev** %8, align 8
  %16 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %6, align 8
  %17 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %6, align 8
  %20 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_start_sect(i32 %21)
  %23 = add i32 %18, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.mddev*, %struct.mddev** %8, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %6, align 8
  %28 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 9
  store i32 %30, i32* %12, align 4
  %31 = load %struct.bvec_merge_data*, %struct.bvec_merge_data** %6, align 8
  %32 = getelementptr inbounds %struct.bvec_merge_data, %struct.bvec_merge_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 1
  %35 = load i32, i32* @WRITE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %39 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  br label %81

41:                                               ; preds = %3
  %42 = load %struct.mddev*, %struct.mddev** %8, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mddev*, %struct.mddev** %8, align 8
  %46 = getelementptr inbounds %struct.mddev, %struct.mddev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.mddev*, %struct.mddev** %8, align 8
  %51 = getelementptr inbounds %struct.mddev, %struct.mddev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %49, %41
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sub i32 %56, 1
  %58 = and i32 %55, %57
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %58, %59
  %61 = sub i32 %54, %60
  %62 = shl i32 %61, 9
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %65, %53
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %69 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sle i32 %67, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %77 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %4, align 4
  br label %81

79:                                               ; preds = %72, %66
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %75, %37
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @get_start_sect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
