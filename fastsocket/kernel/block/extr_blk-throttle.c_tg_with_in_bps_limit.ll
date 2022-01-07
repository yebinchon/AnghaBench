; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_tg_with_in_bps_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_tg_with_in_bps_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { i32 }
%struct.throtl_grp = type { i64*, i64*, i32* }
%struct.bio = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@throtl_slice = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.throtl_data*, %struct.throtl_grp*, %struct.bio*, i64*)* @tg_with_in_bps_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg_with_in_bps_limit(%struct.throtl_data* %0, %struct.throtl_grp* %1, %struct.bio* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.throtl_data*, align 8
  %7 = alloca %struct.throtl_grp*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %6, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %7, align 8
  store %struct.bio* %2, %struct.bio** %8, align 8
  store i64* %3, i64** %9, align 8
  %17 = load %struct.bio*, %struct.bio** %8, align 8
  %18 = call i32 @bio_data_dir(%struct.bio* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* @jiffies, align 8
  %20 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %21 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %19, %26
  store i64 %27, i64* %16, align 8
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %14, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %4
  %31 = load i64, i64* @throtl_slice, align 8
  store i64 %31, i64* %16, align 8
  br label %32

32:                                               ; preds = %30, %4
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* @throtl_slice, align 8
  %35 = call i64 @roundup(i64 %33, i64 %34)
  store i64 %35, i64* %16, align 8
  %36 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %37 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %16, align 8
  %44 = mul i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @HZ, align 4
  %48 = call i32 @do_div(i32 %46, i32 %47)
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %11, align 4
  %50 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %51 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bio*, %struct.bio** %8, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = load i32, i32* %11, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %32
  %64 = load i64*, i64** %9, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i64*, i64** %9, align 8
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %66, %63
  store i32 1, i32* %5, align 4
  br label %109

69:                                               ; preds = %32
  %70 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %71 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bio*, %struct.bio** %8, align 8
  %78 = getelementptr inbounds %struct.bio, %struct.bio* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @HZ, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %87 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @div64_u64(i32 %85, i64 %92)
  store i64 %93, i64* %15, align 8
  %94 = load i64, i64* %15, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %69
  store i64 1, i64* %15, align 8
  br label %97

97:                                               ; preds = %96, %69
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* %14, align 8
  %101 = sub i64 %99, %100
  %102 = add i64 %98, %101
  store i64 %102, i64* %15, align 8
  %103 = load i64*, i64** %9, align 8
  %104 = icmp ne i64* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i64, i64* %15, align 8
  %107 = load i64*, i64** %9, align 8
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %105, %97
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %68
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @roundup(i64, i64) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @div64_u64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
