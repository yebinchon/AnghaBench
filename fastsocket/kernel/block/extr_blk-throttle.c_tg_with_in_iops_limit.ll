; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_tg_with_in_iops_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_tg_with_in_iops_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { i32 }
%struct.throtl_grp = type { i64*, i32*, i32* }
%struct.bio = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@throtl_slice = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.throtl_data*, %struct.throtl_grp*, %struct.bio*, i64*)* @tg_with_in_iops_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg_with_in_iops_limit(%struct.throtl_data* %0, %struct.throtl_grp* %1, %struct.bio* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.throtl_data*, align 8
  %7 = alloca %struct.throtl_grp*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %6, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %7, align 8
  store %struct.bio* %2, %struct.bio** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load %struct.bio*, %struct.bio** %8, align 8
  %17 = call i32 @bio_data_dir(%struct.bio* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i64, i64* @jiffies, align 8
  %19 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %20 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %18, %25
  store i64 %26, i64* %14, align 8
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %4
  %30 = load i64, i64* @throtl_slice, align 8
  store i64 %30, i64* %14, align 8
  br label %31

31:                                               ; preds = %29, %4
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* @throtl_slice, align 8
  %34 = call i64 @roundup(i64 %32, i64 %33)
  store i64 %34, i64* %14, align 8
  %35 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %36 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %14, align 8
  %44 = mul i64 %42, %43
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i32, i32* @HZ, align 4
  %47 = call i32 @do_div(i64 %45, i32 %46)
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* @UINT_MAX, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %31
  %52 = load i64, i64* @UINT_MAX, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  br label %57

54:                                               ; preds = %31
  %55 = load i64, i64* %15, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %59 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %11, align 4
  %67 = icmp ule i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load i64*, i64** %9, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i64*, i64** %9, align 8
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %71, %68
  store i32 1, i32* %5, align 4
  br label %110

74:                                               ; preds = %57
  %75 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %76 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* @HZ, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %86 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %84, %91
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* %12, align 8
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %74
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %12, align 8
  %101 = sub i64 %99, %100
  store i64 %101, i64* %13, align 8
  br label %103

102:                                              ; preds = %74
  store i64 1, i64* %13, align 8
  br label %103

103:                                              ; preds = %102, %98
  %104 = load i64*, i64** %9, align 8
  %105 = icmp ne i64* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i64, i64* %13, align 8
  %108 = load i64*, i64** %9, align 8
  store i64 %107, i64* %108, align 8
  br label %109

109:                                              ; preds = %106, %103
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %73
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @roundup(i64, i64) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
