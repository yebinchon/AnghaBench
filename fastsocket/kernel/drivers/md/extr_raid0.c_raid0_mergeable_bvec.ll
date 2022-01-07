; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid0.c_raid0_mergeable_bvec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid0.c_raid0_mergeable_bvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)*, %struct.mddev* }
%struct.bvec_merge_data = type opaque
%struct.bio_vec = type opaque
%struct.mddev = type { i32, %struct.r0conf* }
%struct.r0conf = type { i32 }
%struct.bvec_merge_data.0 = type { i32, i32, i32 }
%struct.bio_vec.1 = type { i32 }
%struct.strip_zone = type { i32 }
%struct.md_rdev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bvec_merge_data.0*, %struct.bio_vec.1*)* @raid0_mergeable_bvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid0_mergeable_bvec(%struct.request_queue* %0, %struct.bvec_merge_data.0* %1, %struct.bio_vec.1* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.bvec_merge_data.0*, align 8
  %7 = alloca %struct.bio_vec.1*, align 8
  %8 = alloca %struct.mddev*, align 8
  %9 = alloca %struct.r0conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.strip_zone*, align 8
  %16 = alloca %struct.md_rdev*, align 8
  %17 = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.bvec_merge_data.0* %1, %struct.bvec_merge_data.0** %6, align 8
  store %struct.bio_vec.1* %2, %struct.bio_vec.1** %7, align 8
  %18 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %19 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %18, i32 0, i32 1
  %20 = load %struct.mddev*, %struct.mddev** %19, align 8
  store %struct.mddev* %20, %struct.mddev** %8, align 8
  %21 = load %struct.mddev*, %struct.mddev** %8, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 1
  %23 = load %struct.r0conf*, %struct.r0conf** %22, align 8
  store %struct.r0conf* %23, %struct.r0conf** %9, align 8
  %24 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %6, align 8
  %25 = getelementptr inbounds %struct.bvec_merge_data.0, %struct.bvec_merge_data.0* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %6, align 8
  %28 = getelementptr inbounds %struct.bvec_merge_data.0, %struct.bvec_merge_data.0* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @get_start_sect(i32 %29)
  %31 = add i32 %26, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.mddev*, %struct.mddev** %8, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %13, align 4
  %36 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %6, align 8
  %37 = getelementptr inbounds %struct.bvec_merge_data.0, %struct.bvec_merge_data.0* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 9
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i64 @is_power_of_2(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %3
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %13, align 4
  %47 = sub i32 %46, 1
  %48 = and i32 %45, %47
  %49 = load i32, i32* %14, align 4
  %50 = add i32 %48, %49
  %51 = sub i32 %44, %50
  %52 = shl i32 %51, 9
  store i32 %52, i32* %12, align 4
  br label %62

53:                                               ; preds = %3
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @sector_div(i32 %55, i32 %56)
  %58 = load i32, i32* %14, align 4
  %59 = add i32 %57, %58
  %60 = sub i32 %54, %59
  %61 = shl i32 %60, 9
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %53, %43
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.bio_vec.1*, %struct.bio_vec.1** %7, align 8
  %69 = getelementptr inbounds %struct.bio_vec.1, %struct.bio_vec.1* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sle i32 %67, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* %14, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.bio_vec.1*, %struct.bio_vec.1** %7, align 8
  %77 = getelementptr inbounds %struct.bio_vec.1, %struct.bio_vec.1* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %4, align 4
  br label %142

79:                                               ; preds = %72, %66
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.bio_vec.1*, %struct.bio_vec.1** %7, align 8
  %82 = getelementptr inbounds %struct.bio_vec.1, %struct.bio_vec.1* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %4, align 4
  br label %142

87:                                               ; preds = %79
  %88 = load %struct.r0conf*, %struct.r0conf** %9, align 8
  %89 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %4, align 4
  br label %142

94:                                               ; preds = %87
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %10, align 4
  %96 = load %struct.mddev*, %struct.mddev** %8, align 8
  %97 = getelementptr inbounds %struct.mddev, %struct.mddev* %96, i32 0, i32 1
  %98 = load %struct.r0conf*, %struct.r0conf** %97, align 8
  %99 = call %struct.strip_zone* @find_zone(%struct.r0conf* %98, i32* %11)
  store %struct.strip_zone* %99, %struct.strip_zone** %15, align 8
  %100 = load %struct.mddev*, %struct.mddev** %8, align 8
  %101 = load %struct.strip_zone*, %struct.strip_zone** %15, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call %struct.md_rdev* @map_sector(%struct.mddev* %100, %struct.strip_zone* %101, i32 %102, i32* %11)
  store %struct.md_rdev* %103, %struct.md_rdev** %16, align 8
  %104 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %105 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.request_queue* @bdev_get_queue(i32 %106)
  store %struct.request_queue* %107, %struct.request_queue** %17, align 8
  %108 = load %struct.request_queue*, %struct.request_queue** %17, align 8
  %109 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %108, i32 0, i32 0
  %110 = load i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)*, i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)** %109, align 8
  %111 = icmp ne i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)* %110, null
  br i1 %111, label %112, label %140

112:                                              ; preds = %94
  %113 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %114 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %6, align 8
  %117 = getelementptr inbounds %struct.bvec_merge_data.0, %struct.bvec_merge_data.0* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.strip_zone*, %struct.strip_zone** %15, align 8
  %120 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add i32 %118, %121
  %123 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %124 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add i32 %122, %125
  %127 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %6, align 8
  %128 = getelementptr inbounds %struct.bvec_merge_data.0, %struct.bvec_merge_data.0* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.request_queue*, %struct.request_queue** %17, align 8
  %131 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %130, i32 0, i32 0
  %132 = load i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)*, i32 (%struct.request_queue*, %struct.bvec_merge_data*, %struct.bio_vec*)** %131, align 8
  %133 = load %struct.request_queue*, %struct.request_queue** %17, align 8
  %134 = load %struct.bvec_merge_data.0*, %struct.bvec_merge_data.0** %6, align 8
  %135 = bitcast %struct.bvec_merge_data.0* %134 to %struct.bvec_merge_data*
  %136 = load %struct.bio_vec.1*, %struct.bio_vec.1** %7, align 8
  %137 = bitcast %struct.bio_vec.1* %136 to %struct.bio_vec*
  %138 = call i32 %132(%struct.request_queue* %133, %struct.bvec_merge_data* %135, %struct.bio_vec* %137)
  %139 = call i32 @min(i32 %129, i32 %138)
  store i32 %139, i32* %4, align 4
  br label %142

140:                                              ; preds = %94
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %112, %92, %85, %75
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @get_start_sect(i32) #1

declare dso_local i64 @is_power_of_2(i32) #1

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local %struct.strip_zone* @find_zone(%struct.r0conf*, i32*) #1

declare dso_local %struct.md_rdev* @map_sector(%struct.mddev*, %struct.strip_zone*, i32, i32*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
