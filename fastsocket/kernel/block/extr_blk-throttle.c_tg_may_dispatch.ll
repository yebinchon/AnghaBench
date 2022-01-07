; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_tg_may_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_tg_may_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { i32 }
%struct.throtl_grp = type { i32*, i32*, i32*, i32*, i64* }
%struct.bio = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@throtl_slice = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.throtl_data*, %struct.throtl_grp*, %struct.bio*, i64*)* @tg_may_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg_may_dispatch(%struct.throtl_data* %0, %struct.throtl_grp* %1, %struct.bio* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.throtl_data*, align 8
  %7 = alloca %struct.throtl_grp*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %6, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %7, align 8
  store %struct.bio* %2, %struct.bio** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.bio*, %struct.bio** %8, align 8
  %15 = call i32 @bio_data_dir(%struct.bio* %14)
  store i32 %15, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %17 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %16, i32 0, i32 4
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load %struct.bio*, %struct.bio** %8, align 8
  %26 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %27 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call %struct.bio* @bio_list_peek(i32* %31)
  %33 = icmp ne %struct.bio* %25, %32
  br label %34

34:                                               ; preds = %24, %4
  %35 = phi i1 [ false, %4 ], [ %33, %24 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %39 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %61

46:                                               ; preds = %34
  %47 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %48 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i64*, i64** %9, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i64*, i64** %9, align 8
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %58, %55
  store i32 1, i32* %5, align 4
  br label %143

61:                                               ; preds = %46, %34
  %62 = load %struct.throtl_data*, %struct.throtl_data** %6, align 8
  %63 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @throtl_slice_used(%struct.throtl_data* %62, %struct.throtl_grp* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.throtl_data*, %struct.throtl_data** %6, align 8
  %69 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @throtl_start_new_slice(%struct.throtl_data* %68, %struct.throtl_grp* %69, i32 %70)
  br label %94

72:                                               ; preds = %61
  %73 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %74 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* @jiffies, align 8
  %81 = load i64, i64* @throtl_slice, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i64 @time_before(i32 %79, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %72
  %86 = load %struct.throtl_data*, %struct.throtl_data** %6, align 8
  %87 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i64, i64* @jiffies, align 8
  %90 = load i64, i64* @throtl_slice, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @throtl_extend_slice(%struct.throtl_data* %86, %struct.throtl_grp* %87, i32 %88, i64 %91)
  br label %93

93:                                               ; preds = %85, %72
  br label %94

94:                                               ; preds = %93, %67
  %95 = load %struct.throtl_data*, %struct.throtl_data** %6, align 8
  %96 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %97 = load %struct.bio*, %struct.bio** %8, align 8
  %98 = call i64 @tg_with_in_bps_limit(%struct.throtl_data* %95, %struct.throtl_grp* %96, %struct.bio* %97, i64* %11)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %94
  %101 = load %struct.throtl_data*, %struct.throtl_data** %6, align 8
  %102 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %103 = load %struct.bio*, %struct.bio** %8, align 8
  %104 = call i64 @tg_with_in_iops_limit(%struct.throtl_data* %101, %struct.throtl_grp* %102, %struct.bio* %103, i64* %12)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i64*, i64** %9, align 8
  %108 = icmp ne i64* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i64*, i64** %9, align 8
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %109, %106
  store i32 1, i32* %5, align 4
  br label %143

112:                                              ; preds = %100, %94
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %12, align 8
  %115 = call i64 @max(i64 %113, i64 %114)
  store i64 %115, i64* %13, align 8
  %116 = load i64*, i64** %9, align 8
  %117 = icmp ne i64* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i64, i64* %13, align 8
  %120 = load i64*, i64** %9, align 8
  store i64 %119, i64* %120, align 8
  br label %121

121:                                              ; preds = %118, %112
  %122 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %123 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* @jiffies, align 8
  %130 = load i64, i64* %13, align 8
  %131 = add i64 %129, %130
  %132 = call i64 @time_before(i32 %128, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %121
  %135 = load %struct.throtl_data*, %struct.throtl_data** %6, align 8
  %136 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i64, i64* @jiffies, align 8
  %139 = load i64, i64* %13, align 8
  %140 = add i64 %138, %139
  %141 = call i32 @throtl_extend_slice(%struct.throtl_data* %135, %struct.throtl_grp* %136, i32 %137, i64 %140)
  br label %142

142:                                              ; preds = %134, %121
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %142, %111, %60
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.bio* @bio_list_peek(i32*) #1

declare dso_local i64 @throtl_slice_used(%struct.throtl_data*, %struct.throtl_grp*, i32) #1

declare dso_local i32 @throtl_start_new_slice(%struct.throtl_data*, %struct.throtl_grp*, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @throtl_extend_slice(%struct.throtl_data*, %struct.throtl_grp*, i32, i64) #1

declare dso_local i64 @tg_with_in_bps_limit(%struct.throtl_data*, %struct.throtl_grp*, %struct.bio*, i64*) #1

declare dso_local i64 @tg_with_in_iops_limit(%struct.throtl_data*, %struct.throtl_grp*, %struct.bio*, i64*) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
